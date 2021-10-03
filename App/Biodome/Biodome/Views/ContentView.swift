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

struct ContentView: View {
    @EnvironmentObject var bleManager: BLEManager
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
                    
                    Widget(title: "TEMPERATURE A", value: String(bleManager.temperature), units: "°C", imageName: "thermometer", widgetColor: .red)
                    
                    Widget(title: "TEMPERATURE B", value: String(bleManager.temperature), units: "°C", imageName: "thermometer", widgetColor: .red)

                    Widget(title: "LIGHT", value: String(bleManager.temperature), units: "lux", imageName: "sun.max", widgetColor: .yellow)

                    Widget(title: "MOISTURE", value: String(bleManager.temperature), units: "%", imageName: "humidity", widgetColor: .teal)
                    }
                }
            
            // Connection Buttons
            HStack {
                Button(action: {bleManager.connect(ID: ID)})
                    {Text("Connect")
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
    var value: String
    var units: String
    var imageName: String
    var widgetColor: Color
    
    var body: some View {
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(widgetColor)
                .frame(width: 175, height: 125)
            
            VStack(){
                HStack(){
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                        
                    Text(title)
                        .font(.footnote)
                        .foregroundColor(.white)
                }.padding(.top)
                
                Text(value + " " + units)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }
}
