//
//  SettingsView.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        Form {
            
            Section(header: Text("First Section")) {
                Text("Test")
                Slider(value: .constant(0.5))
            }
            
            Section(header: Text("Secon Section")) {
                Text("Test")
                Toggle(isOn: .constant(true)) {
                    Text("Test Setting")
                        .bold()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
