//
//  ListView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

import SwiftUI
struct ListView: View {
    var body: some View {
        List {
ListRowView()
        }
        .navigationTitle(Text("Todo List 📝"))
    }
}
struct ListRowView :  View{
    var body : some View{
        HStack{
            Image(systemName: "checkmark.circle")
            Text("This is the the first Item")

        }

    }
}
#Preview {
    NavigationView {
        ListView()

    }}
