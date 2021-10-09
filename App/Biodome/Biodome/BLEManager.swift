//
//  BLEManager.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-11.
//

import Foundation
import CoreBluetooth

let temperatureCBUUID = CBUUID(string: "00000002-710E-4A5B-8D75-3E5B444BC3CF")

struct Peripheral: Identifiable {
    let id = UUID()
    let name: String
    let rssi: Int
    let perph: CBPeripheral
}

class BLEManager: NSObject, ObservableObject, CBCentralManagerDelegate{
    var centralManager: CBCentralManager!
    var selectedPeripheral: CBPeripheral!
    var selectedDevice: Peripheral!

    @Published var temperature: Float = 0
    @Published var soilMoisture: Float = 0
    @Published var sunIntensity: Float = 0
    
    @Published var connectionState = "Not Connected"
    @Published var isSwitchedOn = false
    @Published var peripherals = [Peripheral]()
    @Published var connectionSelect = [Peripheral]()
    
    override init() {
        super.init()

        centralManager = CBCentralManager(delegate: self, queue: nil)
        centralManager.delegate = self
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
        
//        let newPeripheral = Peripheral(name: peripheralName, rssi: RSSI.intValue, perph: peripheral)
//        peripherals.append(newPeripheral)
        
        if peripheralName.contains("Bio") {
            let newPeripheral = Peripheral(name: peripheralName, rssi: RSSI.intValue, perph: peripheral)
            
            if connectionSelect.isEmpty{
                // No entries yet
                peripherals.append(newPeripheral)
            } else if connectionSelect[0].perph.identifier == newPeripheral.perph.identifier {
                // ID already connected - do nothing
            } else {
                // ID is not used append to connection array
                peripherals.append(newPeripheral)
            }
        }
    }
    
    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        print("Failed to Connect!")
        connectionState = "Failed"
    }
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        print("Connected")
        connectionState = "Connected"
        selectedPeripheral.discoverServices(nil)
    }
       
    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?){
        print("Disconnected")
        connectionState = "Disconnected"
    }
    
    func connect(selected: Peripheral){
        // Add to connection list
        if connectionSelect.count == 1{
            disconnect()
            connectionSelect[0] = selected
        } else {
            connectionSelect.insert(selected, at: 0)
        }
        
        // Remove from search list
        if let idx = peripherals.firstIndex(where: { $0.id == selected.id }) {
            peripherals.remove(at: idx)
        }
        
        // Actually connect
        print("Connecting")
        connectionState = "Connecting"
        selectedDevice = selected
        selectedPeripheral = selected.perph
        selectedPeripheral.delegate = self
        centralManager.connect(selectedPeripheral)
    }
    
    func disconnect(){
        print("Disconnecting")
        centralManager.cancelPeripheralConnection(selectedPeripheral)
        
        // Move connected device back to search list and then clear connected list
        peripherals.insert(connectionSelect[0], at: 0)
        connectionSelect = [Peripheral]()
    }
    
    func startScanning() {
         print("Start scanning")
          centralManager.scanForPeripherals(withServices: nil, options: nil)
          // centralManager.scanForPeripherals(withServices: [someCBUUID])
     }
    
    func stopScanning() {
        print("Stop scanning")
        centralManager.stopScan()
    }
    
    func toggleScanning(scanState: Bool) {
        if scanState {
            peripherals = [Peripheral]()
            startScanning()
        } else {
            stopScanning()
        }
    }
}

extension BLEManager: CBPeripheralDelegate{
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
      guard let services = peripheral.services else { return }
      for service in services {
//        print(service)
        peripheral.discoverCharacteristics(nil, for: service)
      }
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
      guard let characteristics = service.characteristics else { return }

      for characteristic in characteristics {
//        print(characteristic)

        if characteristic.properties.contains(.read) {
//          print("\(characteristic.uuid): properties contains .read")
          peripheral.readValue(for: characteristic)
        }
        if characteristic.properties.contains(.notify) {
//          print("\(characteristic.uuid): properties contains .notify")
          peripheral.setNotifyValue(true, for: characteristic)
        }
      }
    }

    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        switch characteristic.uuid {
            case temperatureCBUUID:
                temperature = getSensorValue(from: characteristic)
            default:
                break
//                print("Unhandled Characteristic UUID: \(characteristic.uuid)")
        }
    }

    private func getSensorValue(from characteristic: CBCharacteristic) -> Float {
        guard let characteristicData = characteristic.value else { return -1 }
        let byteArray = [UInt8](characteristicData)
        
        return Float(Int(byteArray[0]) << 8 + Int(byteArray[1])) / 10
    }
}
