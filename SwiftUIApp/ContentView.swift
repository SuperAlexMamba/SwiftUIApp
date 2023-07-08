//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
                
        TabView {
            InfoView()
                .tabItem {
                    Text("InfoView")
                    Image(systemName: "newspaper")
                }
            HelloView()
                .tabItem {
                    Text("HelloView")
                    Image(systemName: "globe")
                }
            SettingsView()
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
