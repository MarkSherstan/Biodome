//
//  BluetoothLink.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-11.
//

import Foundation
import CoreBluetooth

let heartRateServiceCBUUID = CBUUID(string: "0x180D")
let heartRateMeasurementCharacteristicCBUUID = CBUUID(string: "2A37")
let bodySensorLocationCharacteristicCBUUID = CBUUID(string: "2A38")

struct Peripheral: Identifiable {
    let id: Int
    let name: String
    let rssi: Int
    let perph: CBPeripheral
}


class BLEManager: NSObject, ObservableObject, CBCentralManagerDelegate{

    let soilMoisture = 67
    let sunIntensity = 1000
    let temperature = 24
    
    var centralManager: CBCentralManager!
    var selectedPeripheral: CBPeripheral!

    @Published var isSwitchedOn = false
    @Published var peripherals = [Peripheral]()
    
    override init() {
        super.init()

        centralManager = CBCentralManager(delegate: self, queue: nil)
        centralManager.delegate = self
    }

    func onHeartRateReceived(_ heartRate: Int) {
      print("BPM: \(heartRate)")
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            isSwitchedOn = true
        } else {
            isSwitchedOn = false
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        var peripheralName: String!
       
        if let name = advertisementData[CBAdvertisementDataLocalNameKey] as? String {
            peripheralName = name
        } else {
            peripheralName = "Unknown"
        }
       
        let newPeripheral = Peripheral(id: peripherals.count, name: peripheralName, rssi: RSSI.intValue, perph: peripheral)
        peripherals.append(newPeripheral)
    }
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        print("Connected!")
        selectedPeripheral.discoverServices([heartRateServiceCBUUID])
    }
       
    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?){
        print("Disconnected!")
    }
    
    func connect(ID: Int){
        print("Connect peripheral")
        selectedPeripheral = peripherals[ID].perph
        selectedPeripheral.delegate = self
        centralManager.connect(selectedPeripheral)
    }
    
    func disconnect(){
        print("Disconnect peripheral")
        centralManager.cancelPeripheralConnection(selectedPeripheral)
    }
    
    func startScanning() {
         print("Start scanning")
         // centralManager.scanForPeripherals(withServices: nil, options: nil)
         centralManager.scanForPeripherals(withServices: [heartRateServiceCBUUID])
     }
    
    func stopScanning() {
        print("Stop scanning")
        centralManager.stopScan()
    }

}

extension BLEManager: CBPeripheralDelegate{
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
      guard let services = peripheral.services else { return }
      for service in services {
        print(service)
        peripheral.discoverCharacteristics(nil, for: service)
      }
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
      guard let characteristics = service.characteristics else { return }

      for characteristic in characteristics {
        print(characteristic)

        if characteristic.properties.contains(.read) {
          print("\(characteristic.uuid): properties contains .read")
          peripheral.readValue(for: characteristic)
        }
        if characteristic.properties.contains(.notify) {
          print("\(characteristic.uuid): properties contains .notify")
          peripheral.setNotifyValue(true, for: characteristic)
        }
      }
    }

    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
      switch characteristic.uuid {
      case bodySensorLocationCharacteristicCBUUID:
        let bodySensorLocation = bodyLocation(from: characteristic)
        print("Here")
        print(bodySensorLocation)
      case heartRateMeasurementCharacteristicCBUUID:
        let bpm = heartRate(from: characteristic)
        onHeartRateReceived(bpm)
      default:
        print("Unhandled Characteristic UUID: \(characteristic.uuid)")
      }
    }

    private func bodyLocation(from characteristic: CBCharacteristic) -> String {
      guard let characteristicData = characteristic.value,
        let byte = characteristicData.first else { return "Error" }

      switch byte {
      case 0: return "Other"
      case 1: return "Chest"
      case 2: return "Wrist"
      case 3: return "Finger"
      case 4: return "Hand"
      case 5: return "Ear Lobe"
      case 6: return "Foot"
      default:
        return "Reserved for future use"
      }
    }

    private func heartRate(from characteristic: CBCharacteristic) -> Int {
      guard let characteristicData = characteristic.value else { return -1 }
      let byteArray = [UInt8](characteristicData)

      // See: https://www.bluetooth.com/specifications/gatt/viewer?attributeXmlFile=org.bluetooth.characteristic.heart_rate_measurement.xml
      // The heart rate mesurement is in the 2nd, or in the 2nd and 3rd bytes, i.e. one one or in two bytes
      // The first byte of the first bit specifies the length of the heart rate data, 0 == 1 byte, 1 == 2 bytes
      let firstBitValue = byteArray[0] & 0x01
      if firstBitValue == 0 {
        // Heart Rate Value Format is in the 2nd byte
        return Int(byteArray[1])
      } else {
        // Heart Rate Value Format is in the 2nd and 3rd bytes
        return (Int(byteArray[1]) << 8) + Int(byteArray[2])
      }
    }
}

