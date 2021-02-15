//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by pakkun on 2021/02/15.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(ModelData())
  }
}
