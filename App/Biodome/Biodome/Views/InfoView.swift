//
//  InfoView.swift
//  Biodome
//
//  Created by Mark Sherstan on 2021-10-07.
//

import SwiftUI

struct InfoView: View {
    @EnvironmentObject var bleManager: BLEManager
    var body: some View {
        List {
            Section(){
                HStack{
                    Text("Name")
                    Spacer()
//                    Text(bleManager.selectedDevice.name).foregroundColor(.secondary)
                }
            }

            Section(){
                Button(action: {bleManager.disconnect()
                }){Text("Disconnect")}
            }

        }.listStyle(InsetGroupedListStyle())
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        // Dark
        InfoView().preferredColorScheme(.dark).environmentObject(BLEManager())

        // Light
        InfoView().preferredColorScheme(.light).environmentObject(BLEManager())
    }
}
