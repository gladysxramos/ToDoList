//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    // links views, initially second view is not shown
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding()
                Spacer()
                Button {
                    withAnimation{
                        self.showNewTask = true
                        // self refers to the current view it is on
                    }
                }label: {
                    Text("+")
                }
                .font(.system(size: 40))
                .fontWeight(.black)
            }
            .padding()
            Spacer()
        }
        if showNewTask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
