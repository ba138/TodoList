//
//  TodoListApp.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

internal import SwiftUI

@main
struct TodoListApp: App {
    @StateObject var listviewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()

            }
            .environmentObject(listviewModel)
        }
    }
}
