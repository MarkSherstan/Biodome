//
//  ContentView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-10.
//

import SwiftUI

// Put Name variable somehwere ??? Figure out name and UUID stuff some more

struct ContentView: View {
    @EnvironmentObject var bleManager: BLEManager
    var Name: String
    var ID: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Biodome")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
            Text(bleManager.connectionState)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Divider()
            
            // Sensor Entries
            List{
                SensorEntry(title: "Soil Moisture", subTitle: "\(bleManager.soilMoisture) %", imageName: "drop")
                
                SensorEntry(title: "Light", subTitle: "\(bleManager.sunIntensity) lux", imageName: "sun.max")
                
                SensorEntry(title: "Temperature", subTitle: "\(bleManager.temperature) °C", imageName: "thermometer")
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
        ContentView(Name: "Some Name", ID: 0)
    }
}


struct SensorEntry: View {
    var title: String = "title"
    var subTitle: String = "subTitle"
    var imageName: String = "car"

    var body: some View {
        HStack() {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.trailing)

            VStack(alignment: .leading) {
                Text(title)
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                
                Text(subTitle)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
        }.padding()
    }
}
