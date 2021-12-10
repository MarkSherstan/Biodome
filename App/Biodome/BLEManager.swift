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

class BLEManager: NSObject, ObservableObject, CBCentralManagerDelegate {
    var centralManager: CBCentralManager!
    var selectedPeripheral: CBPeripheral!
    var selectedPeripheralName: String!
    
    @Published var temperature: Float = 0
    @Published var soilMoisture: Float = 0
    @Published var sunIntensity: Float = 0
    
    @Published var connectionState = "Not Connected"
    @Published var availablePeripherals = [Peripheral]()
    @Published var connectedPeripherals = [Peripheral]()
    
    override init() {
        super.init()
        
        centralManager = CBCentralManager(delegate: self, queue: nil)
        centralManager.delegate = self
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        // Check hardware and software Bluetooth status
        switch central.state {
            case .poweredOff:
                print("Bluetooth powered off")
            case .poweredOn:
                print("Bluetooth powered on")
            case .unsupported:
                print("Bluetooth powered unsupported")
            case .unauthorized:
                print("Bluetooth powered unauthorized")
            case .unknown:
                print("Unknown")
            case .resetting:
                print("Resetting")
            @unknown default:
                print("Error")
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        var peripheralName: String!
        
        // Set a name
        if let name = advertisementData[CBAdvertisementDataLocalNameKey] as? String {
            peripheralName = name
        } else {
            peripheralName = "Unknown"
        }

        // Filter Bluetooth peripherals by name
        if peripheralName.contains("Bio") {
            let newPeripheral = Peripheral(name: peripheralName, rssi: RSSI.intValue, perph: peripheral)
            
            if connectedPeripherals.isEmpty{
                // No entries yet
                availablePeripherals.append(newPeripheral)
            } else if connectedPeripherals[0].perph.identifier == newPeripheral.perph.identifier {
                // ID already connected - do nothing
            } else {
                // ID is not used, append to available array
                availablePeripherals.append(newPeripheral)
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
    
    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
        print("Disconnected")
        connectionState = "Disconnected"
        
        // Move connected perph back to available array and then clear connected array
        availablePeripherals.insert(connectedPeripherals[0], at: 0)
        connectedPeripherals = [Peripheral]()
    }
    
    func connect(selected: Peripheral) {
        // Add perph to connected array (only 1 at a time)
        if connectedPeripherals.count == 1{
            disconnect()
            connectedPeripherals[0] = selected
        } else {
            connectedPeripherals.insert(selected, at: 0)
        }
        
        // Remove from available array
        if let idx = availablePeripherals.firstIndex(where: { $0.id == selected.id }) {
            availablePeripherals.remove(at: idx)
        }
        
        // Actually connect
        print("Connecting")
        connectionState = "Connecting"
        selectedPeripheralName = selected.name
        selectedPeripheral = selected.perph
        selectedPeripheral.delegate = self
        centralManager.connect(selectedPeripheral)
    }
    
    func disconnect() {
        print("Disconnecting")
        centralManager.cancelPeripheralConnection(selectedPeripheral)
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
            availablePeripherals = [Peripheral]()
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
            peripheral.discoverCharacteristics(nil, for: service)
        }
    }
    
    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        guard let characteristics = service.characteristics else { return }
        
        for characteristic in characteristics {
            if characteristic.properties.contains(.read) {
                peripheral.readValue(for: characteristic)
            }
            if characteristic.properties.contains(.notify) {
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
        }
    }
    
    private func getSensorValue(from characteristic: CBCharacteristic) -> Float {
        guard let characteristicData = characteristic.value else { return -1 }
        let byteArray = [UInt8](characteristicData)
        
        return Float(Int16(byteArray[0]) << 8 + Int16(byteArray[1])) / 10
    }
}
