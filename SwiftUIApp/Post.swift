//
//  Post.swift
//  SwiftUIApp
//
//  Created by Слава Орлов on 07.07.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Post: Hashable, Codable, Identifiable {
    
    var id = UUID()
        
    var title: String
    
    var description: String
    
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}

struct Annotations: Identifiable {
    
    var id = UUID()
    
    var name: String
        
    var coordinate: CLLocationCoordinate2D
    
}
