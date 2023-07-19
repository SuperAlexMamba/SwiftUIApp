//
//  HelloView.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
        
    @State private var points = [Annotations(name: spartacusPost.title, coordinate: .init(latitude: 41.1051900, longitude: 14.2126900)),
                          Annotations(name: kiaPost.title, coordinate: .init(latitude: 37.53545, longitude: 127.00651)),
                          Annotations(name: spbPost.title, coordinate: .init(latitude: 59.9386, longitude: 30.3141)),
                          Annotations(name: catPost.title, coordinate: .init(latitude: 37, longitude: 10)),
                          Annotations(name: spacePost.title, coordinate: .init(latitude: 19.822098, longitude: -155.467083))]
    
    var body: some View {
        
        
        NavigationView {
            
            Map(mapRect: .constant(.world), annotationItems: points) { item in
                MapAnnotation(coordinate: item.coordinate) {
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.indigo)
                        .frame(width: 20 , height: 20)
                    
                    Text(item.name)
                    .foregroundColor(.black)
                    .shadow(radius: 1)

                }
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
