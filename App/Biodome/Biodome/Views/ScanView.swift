//
//  ScanView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-12.
//

import SwiftUI


struct ScanView: View {
    
    @StateObject var bleManager = BLEManager()
    @State private var scanState = false
    
    var body: some View {
        NavigationView {
            VStack{
                // Scanning toggle switch
                Toggle("Scan", isOn: $scanState)
                    .onChange(of: scanState, perform: { value in
                        self.bleManager.toggleScanning(scanState: scanState)
                    })
                    .padding()
                
                // Found Device List
                List {
                    Section(header: Text("Devices")) {
                        ForEach(bleManager.peripherals) { peripheral in
                            PeripheralRow(peripheral: peripheral)
                        }
                    }
                }.listStyle(GroupedListStyle())
             
            }.navigationTitle("Device Select")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .environmentObject(bleManager)
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
