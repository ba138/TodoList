//
//  AddView.swift
//  TodoList
//
//  Created by Basit Ali on 28/06/2026.
//

internal import SwiftUI

struct AddView: View {
    @EnvironmentObject var viewModel : ListViewModel
    @State private var textFieldText : String = ""
    @State private var showAlert : Bool = false
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
                viewModel.addItems(title: textFieldText)
                textFieldText = ""
                showAlert.toggle()
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
            .alert("Item Has Been Added", isPresented: $showAlert) {
                
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
