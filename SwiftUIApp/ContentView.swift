//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage ("isOn") private var titleOn: Bool = true
    
    var body: some View {
                
        TabView {
            InfoView(titleOn: titleOn)
                .tabItem {
                    Text("InfoView")
                    Image(systemName: "newspaper")
                }
            MapView()
                .tabItem {
                    Text("Locations")
                    Image(systemName: "globe")
                }
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Text("SettingsView")
                    Image(systemName: "gear.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
