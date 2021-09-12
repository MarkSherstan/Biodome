//
//  ContentView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-10.
//

import SwiftUI

let soilMoisture = 67
let sunIntensity = 1100
let temperature = 24

struct ContentView: View {
//    @ObservedObject var bleManager = BLEManager()
    var Name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Biodome")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            Text(Name)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Divider()
            
            List{
                HStack(){
                    Image(systemName: "drop")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading){
                        Text("Soil Moisture")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                        Text("\(soilMoisture) %")
                            .font(.body)
                    }
                }
                
                HStack(){
                    Image(systemName: "sun.max")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading){
                        Text("Light")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                        Text("\(sunIntensity) lux")
                            .font(.body)
                    }
                }
        
                HStack(){
                    Image(systemName: "thermometer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading){
                        Text("Temperature")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                        Text("\(temperature) °C")
                            .font(.body)
                    }
                }
            }
            
            // Scanning Buttons
//            HStack {
//                Button(action: {self.bleManager.connect()})
//                    {Text("Connect")
//                }
//
//                Spacer()
//
//                Button(action: {self.bleManager.disconnect()}) {
//                    Text("Disconnect")
//                }
//            }.padding()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Name: "Some Name")
    }
}
