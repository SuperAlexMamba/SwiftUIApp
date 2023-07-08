//
//  InfoRow.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI

struct InfoRow: View {
    
    var post: Post
    
    var body: some View {
        
        HStack {
            post.image
                .resizable()
                .frame(width: 50,height: 50)
                .cornerRadius(100)
                .shadow(radius: 5)
            VStack{
                Text(post.title)
                    .font(.headline)
            }
            NavigationLink("", destination: InfoDetails(post: post))
            Spacer()
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: posts[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
