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
            Text("Hi there")
        }
        .navigationTitle(Text("Todo List 📝"))
    }
}

#Preview {
    NavigationView {
        ListView()

    }}
