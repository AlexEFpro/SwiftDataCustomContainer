//
//  FriendModel.swift
//  SwiftDataCustomContainer
//
//  Created by Alejandro  Salinas Ramirez on 25/01/25.
//

import Foundation
import SwiftData
// Primer paso decalracion del model 
@Model
class FriendModel{
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

extension FriendModel{
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
