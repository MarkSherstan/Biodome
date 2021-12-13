//
//  SheetView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-10-06.
//

import SwiftUI

// Connected devices
struct SelectedRow: View {
    @EnvironmentObject var bleManager: BLEManager
    @Binding var infoViewState: Bool
    var peripheral: Peripheral
    
    var body: some View {
        HStack {
            Text(peripheral.name)
            Spacer()
            Text(bleManager.connectionState).foregroundColor(.secondary)
            
            Button(action: {
                infoViewState = true
            }) {
                Image(systemName: "info.circle")
            }.buttonStyle(BorderlessButtonStyle())
        }
    }
}

// Available devices
struct PeripheralRow: View {
    @EnvironmentObject var bleManager: BLEManager
    var peripheral: Peripheral
    
    var body: some View {
        HStack {
            Text(peripheral.name)
            Spacer()
            Button(action: {
                bleManager.connect(selected: peripheral)
            }) {
                Text("")
            }
        }
    }
}

// Main sheet view
struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var bleManager: BLEManager
    @State private var infoViewState: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Connected Device")) {
                    ForEach(bleManager.connectedPeripherals) { peripheral in
                        SelectedRow(infoViewState: $infoViewState, peripheral: peripheral)
                    }
                }
                
                Section(header: HStack{Text("Devices  "); ProgressView()}) {
                    ForEach(bleManager.availablePeripherals) { peripheral in
                        PeripheralRow(peripheral: peripheral)
                    }
                }
            }.listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Device Manager")
                .navigationBarTitleDisplayMode(.inline)
                .background(NavigationLink("", destination: InfoView(), isActive: $infoViewState))
        }
    }
}

// Preview
struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView().preferredColorScheme(.dark).environmentObject(BLEManager())
        
        SheetView().preferredColorScheme(.light).environmentObject(BLEManager())
    }
}
