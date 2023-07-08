//
//  PostCircelImage.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct PostCapsulelImage: View {
    
    var post: Post
    
    var body: some View {
        Image(post.imageName)
            .resizable()
            .frame(width: 300, height: 250)
            .clipShape(Capsule())
            .overlay(
                Capsule()
                    .stroke(.white,lineWidth: 5)
            )
            .shadow(radius: 8)
    }
}

struct PostCircelImage_Previews: PreviewProvider {
    static var previews: some View {
        PostCapsulelImage(post: posts[0])
    }
}
