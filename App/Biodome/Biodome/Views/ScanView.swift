//
//  ScanView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-12.
//

import SwiftUI

struct ScanView: View {
    
    @StateObject var bleManager = BLEManager()
    
    var body: some View {
        NavigationView {
            VStack{
                // List of Devices
                List(bleManager.peripherals) { peripheral in
                    NavigationLink(destination: ContentView(Name: peripheral.name, ID: peripheral.id)){
                        HStack {
                            Text(peripheral.name)
                            Spacer()
                            Text(String(peripheral.rssi))
                        }
                    }
                }.frame(height: 600)
                Spacer()
                
                // Scanning Buttons
                HStack {
                    Button(action: {self.bleManager.startScanning()})
                        {Text("Start Scanning")
                    }
                    
                    Spacer()
                    
                    Button(action: {self.bleManager.stopScanning()}) {
                        Text("Stop Scanning")
                    }
                }.padding()
                
                // Status
                if bleManager.isSwitchedOn {
                    Text("Bluetooth is ON")
                        .foregroundColor(.green)
                } else {
                    Text("Bluetooth is OFF")
                        .foregroundColor(.red)
                }
            }.navigationBarTitle("Bluetooth Devices", displayMode: .inline)
        }.environmentObject(bleManager)
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
