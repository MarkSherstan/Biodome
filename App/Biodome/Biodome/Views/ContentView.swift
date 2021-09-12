//
//  ContentView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-10.
//

import SwiftUI

let BTL = BluetoothLink()

let soilMoisture = 67
let sunIntensity = 1100
let temperature = 24

struct ContentView: View {
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
            
            Button("Scan"){
                BTL.smash()
                print(BTL.ii)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Name: "Some Name")
    }
}