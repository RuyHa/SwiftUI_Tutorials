//
//  Landmark.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 2023/11/15.
//

import Foundation
import SwiftUI
import CoreLocation

/**
 Identifiable 를 추가하면 ID라는 값을 강제로 가져야만 한다.
 */
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
            )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}