//
//  ScarlettApp.swift
//  Scarlett
//
//  Created by Justin Damhaut on 6/4/24.
//

import SwiftUI

@main
struct ScarlettApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
