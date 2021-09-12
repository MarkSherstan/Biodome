//
//  BluetoothLink.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-11.
//

import Foundation
import CoreBluetooth

let heartRateServiceCBUUID = CBUUID(string: "0x180D")

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
        selectedPeripheral.discoverServices(nil)
    }
    
    func connect(ID: Int){
        print("Connect Peripheral")
        selectedPeripheral = peripherals[ID].perph
        centralManager.connect(selectedPeripheral)
    }
    
    func disconnect(){
        print("Disconnect Peripheral")
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
