//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Debjit Naskar on 06/05/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
