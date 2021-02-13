//
//  Landmark.swift
//  Landmarks
//
//  Created by pakkun on 2021/02/13.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  
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