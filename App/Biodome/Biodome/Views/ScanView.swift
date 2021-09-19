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
                // Scanning toggle switch
                Toggle(isOn: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/){
                    Text("Scan")
                }.padding()
                
                Spacer()
                
                // Found Device List
                List {
                    Section(header: Text("Devices")) {
                        ForEach(bleManager.peripherals) { peripheral in
                            PeripheralRow(peripheral: peripheral)
                        }
                    }
                }.listStyle(GroupedListStyle())
                
                // Scanning Buttons
                HStack {
                    Button(action: {self.bleManager.startScanning()})
                        {Text("Start Scan")
                    }

                    Spacer()

                    Button(action: {self.bleManager.stopScanning()}) {
                        Text("Stop Scanning")
                    }
                }.padding()
                
                // Status
//                if bleManager.isSwitchedOn {
//                    Text("Bluetooth is ON")
//                        .foregroundColor(.green)
//                } else {
//                    Text("Bluetooth is OFF")
//                        .foregroundColor(.red)
//                }
                
            } .navigationBarTitle("Device Select") //, displayMode: .inline
        }.environmentObject(bleManager)
    }
}

struct PeripheralRow: View {
    var peripheral: Peripheral
    
    var body: some View {
        NavigationLink(destination: ContentView(Name: peripheral.name, ID: peripheral.id)){
            HStack {
                Text(peripheral.name)
                Spacer()
                Text(String(peripheral.rssi))
            }
        }
    }
}


struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
