//
//  InfoDetails.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct InfoDetails: View {
    
    var post: Post
    
    var body: some View {
        
        ScrollView {
            
            VStack {
            PostCapsulelImage(post: post)

                Text(post.title)
                    .font(.largeTitle)
                    .bold()

                PostDescriptionView(post: post)
                    .padding(10)

                Spacer()
            }
        }
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: posts[0])
    }
}
