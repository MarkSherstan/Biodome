//
//  BluetoothLink.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-11.
//

import Foundation
import CoreBluetooth


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
    
    var myCentral: CBCentralManager!

    @Published var isSwitchedOn = false
    @Published var peripherals = [Peripheral]()
    
    override init() {
        super.init()

        myCentral = CBCentralManager(delegate: self, queue: nil)
        myCentral.delegate = self
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
    
    func connect(ID: Int){
        print("Connect")
        print(ID)
        print(peripherals[ID])
    }
    
    func disconnect(){
        print("Disconnect")
    }
    
    func startScanning() {
         print("Start scanning")
         myCentral.scanForPeripherals(withServices: nil, options: nil)
     }
    
    func stopScanning() {
        print("Stop scanning")
        myCentral.stopScan()
    }

}
