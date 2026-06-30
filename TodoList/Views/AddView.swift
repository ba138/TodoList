//
//  AddView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

internal import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var viewModel : ListViewModel
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
                if !textFieldText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    viewModel.addItems(title: textFieldText)
                    textFieldText = ""
                    dismiss()
                } 
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
    .environmentObject(ListViewModel())
}
