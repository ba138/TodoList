//
//  ListView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

internal import SwiftUI
struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    var body: some View {
        ZStack{
            if(listViewModel.myList.isEmpty){
NoItemsView()
            }else{
                List {
                    ForEach(listViewModel.myList) { item in
                        ListRowView(
                            title: item.item,
                            isCompleted: item.isCompleted
                        )
                        .onTapGesture {
                            withAnimation(.linear){
                                listViewModel.updateItem(item: item)
                            }
                        }
                        
                    }
                    .onDelete(perform: listViewModel.deleteItems)
                    .onMove(perform: listViewModel.onMove)
                }
            }
        }
        .listStyle(.automatic)
        .navigationTitle(Text("Todo List 📝"))
        .toolbar {
            ToolbarItem(placement: .topBarLeading) { EditButton() }
            ToolbarItem(placement: .topBarTrailing) { 
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
  
}

#Preview {
    NavigationStack {
        ListView()
            
    }.environmentObject(ListViewModel())
}

