//
//  PostDescriptionView.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct PostDescriptionView: View {
    
    var post: Post
    
    var body: some View {
        
        VStack {
            Text(post.description)
                .bold()
                .padding(20)
        }
        .background(Color.gray)
        .cornerRadius(10)
    }
}

struct PostDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PostDescriptionView(post: posts[0])
    }
}
