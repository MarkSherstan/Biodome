//
//  ContentView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-10.
//

import SwiftUI

// Put Name variable somehwere ??? Figure out name and UUID stuff some more -> add info tab
// Connection timeout / error message?
// Split this into 2 files?
// If removed from list is peripheral refound?
// Add progress wheel on connected device while connecting
// Conencting / disconnecting logic messages might be a little out of sync

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


struct ContentView: View {
    @StateObject var bleManager = BLEManager()
    @State private var sheetState = false
    
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Biodome")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(bleManager.connectionState)
                .font(.subheadline)
            
            Divider()
            
            // Sensor values
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 20){
                    
                    Widget(title: "TEMPERATURE A", value: bleManager.temperature, units: "°C", imageName: "thermometer", widgetColor: .green)
                    
                    Widget(title: "TEMPERATURE B", value: bleManager.temperature, units: "°C", imageName: "thermometer", widgetColor: .green)

                    Widget(title: "LIGHT", value: bleManager.sunIntensity, units: " lux", imageName: "sun.max", widgetColor: .orange)

                    Widget(title: "MOISTURE", value: bleManager.soilMoisture, units: "%", imageName: "humidity", widgetColor: .teal)
                    }
                }
            
            // Discover button
            HStack(){
                Spacer()
                
                Button(action: {
                    sheetState.toggle()
                    self.bleManager.toggleScanning(scanState: true)
                }) {
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                }
                .sheet(isPresented: $sheetState,
                       onDismiss: {self.bleManager.toggleScanning(scanState: false)},
                       content:{SheetView()
                })
                
                Spacer()
            }

        }
        .environmentObject(bleManager)
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // Dark View
            ContentView().preferredColorScheme(.dark)
            
            // Light View
            ContentView().preferredColorScheme(.light)
        }
    }
}


struct Widget: View {
    var title: String
    var value: Float
    var units: String
    var imageName: String
    var widgetColor: Color
    
    var body: some View {
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .strokeBorder(widgetColor, lineWidth: 3)
                .background( RoundedRectangle(cornerRadius: 25, style: .continuous).foregroundColor(widgetColor))
                .opacity(0.3)
                .frame(width: 150, height: 100)
            
            VStack(spacing: 10){
                HStack(){
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundColor(widgetColor)
                        
                    Text(title)
                        .font(.footnote)
                        .foregroundColor(widgetColor)
                }.padding(.top)
                
                Text(String(format: "%.0f%@", value, units))
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(widgetColor)
            }
        }
    }
}
