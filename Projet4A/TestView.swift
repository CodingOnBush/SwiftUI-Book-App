//
//  TestView.swift
//  Projet4A
//
//  Created by Sogekingu on 28/12/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct TestView: View {
    
    @StateObject var toDoList = ToDoList()
    
    var body: some View {
        VStack {
            ToDoListView(toDoList: toDoList)
            
            HStack {
                Button(action: {
                    if !toDoList.items.isEmpty {
                        toDoList.items.removeLast()
                    }
                }, label: {
                    Text("Supprimer")
                })
                
                Button(action: {
                    toDoList.items.append("Item n° \(toDoList.items.count + 1)")
                    
                }, label: {
                    Text("Ajouter")
                })
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

class ToDoList: ObservableObject {
    @Published var items: [String] = []
}

struct ToDoListView: View {
    
    @ObservedObject var toDoList: ToDoList
    
    var body: some View {
        VStack {
            ForEach(toDoList.items, id: \.self) { item in
                Text(item).padding()
            }
        }
    }
}
