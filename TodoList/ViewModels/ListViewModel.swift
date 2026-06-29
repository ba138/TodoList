//
//  ListViewModel.swift
//  TodoList
//
//  Created by Basit Ali on 29/06/2026.
//

import Foundation
internal import Combine
internal import SwiftUI
class ListViewModel  : ObservableObject{
    @Published var myList : [ItemsModel] =
    [
        
    ]
    init() {
     getData()
        
    }
    func getData(){
        let newItems  = [
            ItemsModel(item: "This is the first item", isCompleted: true),
            ItemsModel(item: "This is the Second item", isCompleted: false),
            ItemsModel(item: "This is the Third item", isCompleted: true),
            ItemsModel(item: "This is the Fourth item", isCompleted: false),
        ]
        myList.append(contentsOf: newItems)
    }
    func deleteItems(_ indexSet: IndexSet) {
        myList.remove(atOffsets: indexSet)

    }
    func onMove(from : IndexSet ,to : Int){
        myList.move(fromOffsets: from, toOffset: to)
    }
}
