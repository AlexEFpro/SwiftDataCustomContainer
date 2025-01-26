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
#if DEBUG // this it's necessary when use the preview content folder.
#Preview {
    // opcion 3 directo en preview
//    let container = try! ModelContainer(for: FriendModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
//    //Add mock
//    container.mainContext.insert(FriendModel(firstName: "Alejandro", lastName: "Salinas"))
//    container.mainContext.insert(FriendModel(firstName: "Maria", lastName: "Perez"))
//    container.mainContext.insert(FriendModel(firstName: "Juan", lastName: "Lopez"))
  return  ContentView()
        .modelContainer(FriendModel.preview)
    //en el caso directo en preview se pasa por parametro la let declarada en este caso container
}
#endif
