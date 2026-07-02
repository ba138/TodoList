//
//  ListViewModel.swift
//  TodoList
//
//  Created by Basit Ali on 29/06/2026.
//

import Foundation
import Combine
internal import SwiftUI
class ListViewModel  : ObservableObject{
    @Published var myList : [ItemsModel] =
    [
        
    ]{
        didSet{
            saveData()
        }
    }
    let itemKey : String = "myList"
    init() {
     getData()
        
    }
    func getData(){
//        let newItems  = [
//            ItemsModel(item: "This is the first item", isCompleted: true),
//            ItemsModel(item: "This is the Second item", isCompleted: false),
//            ItemsModel(item: "This is the Third item", isCompleted: true),
//            ItemsModel(item: "This is the Fourth item", isCompleted: false),
//        ]
//        myList.append(contentsOf: newItems)
        guard let
                data = UserDefaults.standard.data(forKey: itemKey) ,
        let saveData = try? JSONDecoder().decode([ItemsModel].self, from: data)
        else{return}
        self.myList = saveData
    }
    func deleteItems(_ indexSet: IndexSet) {
        myList.remove(atOffsets: indexSet)

    }
    func onMove(from : IndexSet ,to : Int){
        myList.move(fromOffsets: from, toOffset: to)
    }
    func addItems(title : String){
        let newItem = ItemsModel(item: title, isCompleted: false)
        myList.append(newItem)
    }
    func updateItem (item :ItemsModel) {
//       if let index = myList.firstIndex { exisxtinItem in
//            return exisxtinItem.id == item.id
//       }{
//           
//       }
        if let index = myList.firstIndex(where: {$0.id == item.id}){
            myList[index] = item.updateCompletion()
        }
    }
    func saveData(){
        if let encodedData = try? JSONEncoder().encode(myList) {
            UserDefaults.standard.set(encodedData, forKey: itemKey)
        }
    }
}

