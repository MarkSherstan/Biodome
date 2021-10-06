//
//  SheetView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-10-06.
//

import SwiftUI

struct SelectedRow: View {
    @EnvironmentObject var bleManager: BLEManager
    var peripheral: Peripheral
    
    var body: some View {
        HStack {
            Text(peripheral.name)
            Spacer()
            Text(bleManager.connectionState).foregroundColor(.secondary)
        }
    }
}


struct PeripheralRow: View {
    @EnvironmentObject var bleManager: BLEManager
    var peripheral: Peripheral
    
    var body: some View {
        HStack {
            Text(peripheral.name)
            Spacer()
            Button(action: {
                bleManager.connect(selected: peripheral)
            }){}
        }
    }
}


struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var bleManager: BLEManager
    
    var body: some View {
        
        List {
            Section(header: Text("Connected Device")){
                ForEach(bleManager.connectionSelect) { peripheral in
                    SelectedRow(peripheral: peripheral)
                }
            }
            
            Section(header:
                HStack{
                    Text("Devices  ")
                    ProgressView()
                }) {
                ForEach(bleManager.peripherals) { peripheral in
                    PeripheralRow(peripheral: peripheral)
                }
            }
        }.listStyle(InsetGroupedListStyle())
    }
}


struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
