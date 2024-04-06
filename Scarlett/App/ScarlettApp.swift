//
//  ScarlettApp.swift
//  Scarlett
//
//  Created by Justin Damhaut on 6/4/24.
//

import SwiftUI

@main
struct ScarlettApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

#Preview {
    ContentView()
}

