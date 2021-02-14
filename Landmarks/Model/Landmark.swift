//
//  Landmark.swift
//  Landmarks
//
//  Created by pakkun on 2021/02/13.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  var isFavorite: Bool
  
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
  private var coordinates: Coordinates
  var locationCoordinates: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
  }
}
