//
//  ContentView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-09-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Biodome")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Text("V1.0")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Divider()
            
            List{
                
                HStack(){
                    Image(systemName: "drop")
                    
                    VStack(alignment: .leading){
                        Text("Soil Moisture")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        Text("These are some words")
                    }
                    
                }
                
                HStack(){
                    Image(systemName: "sun.max")
                    Text("Light")
                }
        
                HStack(){
                    Image(systemName: "thermometer")
                    Text("Temperature")
                }

            }
            .font(.callout)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
