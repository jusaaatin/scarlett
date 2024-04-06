//
//  ContentView.swift
//  Scarlett
//
//  Created by Justin Damhaut on 6/4/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var homeShowBrightnessScrollBar = false
    
    // MARK: - BODY
    var body: some View {
        VStack(
            alignment: .center,
            spacing: -70
        ){
            dateView()
            timeView()
        }
    }
}




// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPad Pro")
  }
}

