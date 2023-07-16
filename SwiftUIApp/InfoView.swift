//
//  InfoView.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct InfoView: View {
    
    var titleOn: Bool
    
    var body: some View {
                
        NavigationView {
            List(posts) { post in
                InfoRow(post: post)
            }
            .navigationTitle(titleOn ? "Posts" : "")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: true)
    }
}
