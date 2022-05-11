//
//  McEatApp.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 11/05/22.
//

import SwiftUI

@main
struct McEatApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
