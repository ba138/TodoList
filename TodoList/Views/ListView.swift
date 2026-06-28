//
//  ListView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

import SwiftUI
struct ListView: View {
    @State private var myList : [String] =
[
   "This is the first title",
   "This is the second title",
   "This is the third title",
   "This is the fourth title"
]
    var body: some View {
        List {
            ForEach(myList, id: \.self) { item in
                ListRowView(
                    title:item
                )
            }
        }
        .listStyle(.automatic)
        .navigationTitle(Text("Todo List 📝"))
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: {
            AddView()
        }))
    }
}

#Preview {
    NavigationView {
        ListView()

    }}
