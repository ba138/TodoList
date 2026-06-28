//
//  ListRowView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

import SwiftUI

struct ListRowView :  View{
    let title : String
    var body : some View{
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)

        }

    }
}

#Preview {
    ListRowView(
        title: "This is the first item"
    )
}
