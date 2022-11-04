//
//  ZbraryApp.swift
//  Zbrary
//
//  Created by Kyle Damon on 7/26/22.
//  Modified on Sept 17, 2022
//

import SwiftUI

@main
struct ZbraryApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
