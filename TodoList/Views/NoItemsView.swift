//
//  NoItemsView.swift
//  TodoList
//
//  Created by Basit Ali on 02/07/2026.
//

internal import SwiftUI

struct NoItemsView: View {
    @State var animated : Bool = false
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
                                    .background(animated ? Color.green : Color.red)
                                    .cornerRadius(12)
                            }
            .padding(.horizontal , animated ? 30 : 50)
            .scaleEffect(animated ? 1.1 : 1.0)
                            .onAppear(perform: addAnimated)

            
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
    }
    func addAnimated() {
        guard !animated else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5,) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animated.toggle()
            }
        }
    }
}

#Preview {
    NavigationView {
        NoItemsView().navigationTitle(Text("Title"))

    }
}
