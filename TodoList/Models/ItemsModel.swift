//
//  ItemsModel.swift
//  TodoList
//
//  Created by Basit Ali on 29/06/2026.
//

import Foundation
struct ItemsModel : Identifiable, Codable{
    let id : String
    let item : String
    let isCompleted : Bool
    init(id : String = UUID().uuidString , item: String , isCompleted: Bool) {
        self.id = id
        self.item = item
        self.isCompleted = isCompleted
    }
    func  updateCompletion () -> ItemsModel {
        return ItemsModel(id: id, item: item, isCompleted: !isCompleted)
    }
}

