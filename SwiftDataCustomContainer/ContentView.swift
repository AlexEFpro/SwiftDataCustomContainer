//
//  ContentView.swift
//  SwiftDataCustomContainer
//
//  Created by Alejandro  Salinas Ramirez on 25/01/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext // Paso3 insercion del context
    @Query private var friends: [FriendModel] // solicitud sencilla
    var body: some View {
        List(friends){ friend in
            HStack{ Text(friend.firstName)
                Text(friend.lastName)
            }
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(FriendModel.preview)
}
