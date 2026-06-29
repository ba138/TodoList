//
//  ListView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

import SwiftUI
struct ListView: View {
    @State private var myList : [ItemsModel] =
[
    ItemsModel(item: "This is the first item", isCompleted: true),
    ItemsModel(item: "This is the Second item", isCompleted: false),
    ItemsModel(item: "This is the Third item", isCompleted: true),
    ItemsModel(item: "This is the Fourth item", isCompleted: false),
]
    var body: some View {
        List {
            ForEach(myList, ) { item in
                ListRowView(
                    title:item.item ,
                    isCompleted: item.isCompleted
                )
                
            }.onDelete(perform: deletreItems)
                .onMove(perform: onMove)
        }
        .listStyle(.automatic)
        .navigationTitle(Text("Todo List 📝"))
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: {
            AddView()
        }))
    }
    func deletreItems (indexSet : IndexSet){
        myList.remove(atOffsets: indexSet)

    }
    func onMove(from : IndexSet ,to : Int){
        myList.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    NavigationView {
        ListView()

    }}
