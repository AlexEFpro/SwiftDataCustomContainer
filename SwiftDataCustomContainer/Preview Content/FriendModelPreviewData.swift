//
//  FriendModelPreviewData.swift
//  SwiftDataCustomContainer
//
//  Created by Alejandro  Salinas Ramirez on 25/01/25.
//

import Foundation
import SwiftData
extension FriendModel{
    //opcion 2 mediante archivo por separado dentro de preview content
    @MainActor
    static var preview: ModelContainer{
        let container = try! ModelContainer(for: FriendModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        //Add mock
        container.mainContext.insert(FriendModel(firstName: "Alejandro", lastName: "Salinas"))
        container.mainContext.insert(FriendModel(firstName: "Maria", lastName: "Perez"))
        container.mainContext.insert(FriendModel(firstName: "Juan", lastName: "Lopez"))
        return container
    }
}
