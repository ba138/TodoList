//
//  AddView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

internal import SwiftUI

struct AddView: View {
    @State private var textFieldText : String = ""
    var body: some View {
        ScrollView {
            TextField("Add Todo", text: $textFieldText)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.3).cornerRadius(12))
                .padding(20)
            Spacer()
            Button {
                
            } label: {
                Text("Add Todo")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.green.cornerRadius(12))
                    .padding(20)
            }

        }
        .navigationTitle(Text("Add Items 🖊️"))
    }
}

#Preview {
    NavigationView {
        AddView()

    }
}
