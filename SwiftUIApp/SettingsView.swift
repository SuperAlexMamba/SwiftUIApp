//
//  SettingsView.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct SettingsView: View {
    
    
    @Environment(\.colorScheme) var colorScheme
        
    @State private var darkMode: Bool = true
    
    @Binding var titleOn: Bool
    
    var body: some View {

        Form {
            
            Section(header: Text("First Section")) {
                
                if darkMode {
                    Text("Dark Theme enabled")
                        .bold()
                }
                else {
                    Text("Light Theme enabled")
                        .bold()
                }
                
                Slider(value: .constant(0.5))
 
            }
            
            Section(header: Text("Secon Section")) {
                Toggle(isOn: $darkMode ) {
                    Text("Dark Theme")
                }
                
                Toggle(isOn: $titleOn) {

                    if titleOn {
                        Text("Navigation Title Enabled")
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(titleOn: .constant(true))
    }
}
