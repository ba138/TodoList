//
//  NoItemsView.swift
//  TodoList
//
//  Created by Basit Ali on 02/07/2026.
//

internal import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView{
            VStack(spacing : 20){
                Text("There are no Items!")
                    .font(.title)
                    .bold()
                Text("Are you a productive person? I think You should click the add button and add a bumch of items to your todo list")
            }
            .multilineTextAlignment(.center)
            .padding(40)
            NavigationLink {
                AddView()
            } label: {
                Text("Add SomeThingh")
                                    .foregroundColor(.white)
                                    .frame(height: 55)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.green)
                                    .cornerRadius(12)
                            }
                            .padding(40)

            
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
    }
}

#Preview {
    NavigationView {
        NoItemsView().navigationTitle(Text("Title"))

    }
}
