//
//  InfoView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-10-07.
//

import SwiftUI

// Main info view
struct InfoView: View {
    @EnvironmentObject var bleManager: BLEManager
    
    var body: some View {
        List {
            // Info about connected device
            Section("About") {
                HStack{
                    Text("Name")
                    Spacer()
                    if bleManager.connectedPeripherals.isEmpty {
                        Text("")
                    } else {
                        Text(bleManager.selectedPeripheralName).foregroundColor(.secondary)
                    }
                    
                }
            }
            
            // Disconnect button
            Section() {
                Button(action: {
                    bleManager.disconnect()
                }) {
                    Text("Disconnect")
                }
            }
            
        }.listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Info")
            .navigationBarTitleDisplayMode(.inline)
    }
}

// Preview
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView().preferredColorScheme(.dark).environmentObject(BLEManager())
        
        InfoView().preferredColorScheme(.light).environmentObject(BLEManager())
    }
}
