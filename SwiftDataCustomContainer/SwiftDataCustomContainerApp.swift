//
//  SwiftDataCustomContainerApp.swift
//  SwiftDataCustomContainer
//
//  Created by Alejandro  Salinas Ramirez on 25/01/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataCustomContainerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:FriendModel.self) // Paso dos creacion del contenedor 
        
    }
}
