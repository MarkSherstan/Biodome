//
//  ContentView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-10.
//

import SwiftUI

// Put Name variable somehwere ??? Figure out name and UUID stuff some more
// Timeout delay message when connecting?
// Put everything just on this screen?
// Loading

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
    }
}


struct ContentView: View {
    @EnvironmentObject var bleManager: BLEManager
    @State private var sheetState = false
    
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    var Name: String
    var ID: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Biodome")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(bleManager.connectionState)
                .font(.subheadline)
            
            Divider()
            
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 20){
                    
                    Widget(title: "TEMPERATURE A", value: bleManager.temperature, units: "°C", imageName: "thermometer", widgetColor: .green)
                    
                    Widget(title: "TEMPERATURE B", value: bleManager.temperature, units: "°C", imageName: "thermometer", widgetColor: .green)

                    Widget(title: "LIGHT", value: bleManager.sunIntensity, units: "lux", imageName: "sun.max", widgetColor: .orange)

                    Widget(title: "MOISTURE", value: bleManager.soilMoisture, units: "%", imageName: "humidity", widgetColor: .teal)
                    }
                }
            
            // Connection Buttons
            HStack {
                Button(action: {bleManager.connect(ID: ID)})
                    {Text("Connect")
                }

                Spacer()
                
                Button(action: {
                    sheetState.toggle()
                }) {
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                }
                .sheet(isPresented: $sheetState) {
                    SheetView()
                }

                Spacer()

                Button(action: {bleManager.disconnect()}) {
                    Text("Disconnect")
                }
            }.padding()
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // Dark View
            ContentView(Name: "Some Name", ID: 0).preferredColorScheme(.dark).environmentObject(BLEManager())
            
            // Light View
            ContentView(Name: "Some Name", ID: 0).preferredColorScheme(.light).environmentObject(BLEManager())
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
                .frame(width: 175, height: 125)
            
            VStack(){
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
                
                Text(String(format: "%.0f %@", value, units))
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(widgetColor)
            }
        }
    }
}
