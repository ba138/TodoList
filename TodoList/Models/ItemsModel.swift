//
//  ItemsModel.swift
//  TodoList
//
//  Created by Basit Ali on 29/06/2026.
//

import Foundation
struct ItemsModel : Identifiable {
    let id : String = UUID().uuidString
    let item : String
    let isCompleted : Bool
}
