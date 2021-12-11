//
//  ContentView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-10.
//

import SwiftUI

// Sensor widget parameters
struct WidgetParameters {
    var name: String
    var units: String
    var icon: String
    var color: Color
}

// Sensor widget entry
struct Widget: View {
    @EnvironmentObject var bleManager: BLEManager
    let parameters: WidgetParameters
    var value: Float
    
    var body: some View {
        ZStack(alignment: .top) {
            // Widget box
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .strokeBorder(parameters.color, lineWidth: 3)
                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).foregroundColor(parameters.color))
                .opacity(0.3)
                .frame(width: 150, height: 100)
            
            VStack(spacing: 10) {
                // Icon and title
                HStack() {
                    Image(systemName: parameters.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundColor(parameters.color)
                    Text(parameters.name)
                        .font(.footnote)
                        .foregroundColor(parameters.color)
                }.padding(.top)
                
                // Value
                if bleManager.connectionState == "Connected" {
                    Text(String(format: "%.0f%@", value, parameters.units))
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(parameters.color)
                } else {
                    Text("—")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(parameters.color)
                }
            }
        }
    }
}

// Main content view
struct ContentView: View {
    @StateObject var bleManager = BLEManager()
    @State private var sheetState = false
    
    let temperatureAlphaParms = WidgetParameters(name: "TEMPERATURE A", units: "°C", icon: "thermometer", color: .green)
    let temperatureBetaParms = WidgetParameters(name: "TEMPERATURE B", units: "°C", icon: "thermometer", color: .green)
    let lightParms = WidgetParameters(name: "LIGHT", units: " lux", icon: "sun.max", color: .orange)
    let moistureParms = WidgetParameters(name: "MOISTURE", units: "%", icon: "humidity", color: .teal)

    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            // Heading
            Text("Biodome")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(bleManager.connectionState)
                .font(.subheadline)
            
            Divider()
            
            // Sensor widget entries
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 20) {
                    Widget(parameters: temperatureAlphaParms, value: bleManager.temperatureA)
                    Widget(parameters: temperatureBetaParms, value: bleManager.temperatureB)
                    Widget(parameters: lightParms, value: bleManager.sunIntensity)
                    Widget(parameters: moistureParms, value: bleManager.soilMoisture)
                }
            }
            
            // Discover button
            HStack() {
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

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        
        ContentView().preferredColorScheme(.light)
    }
}
