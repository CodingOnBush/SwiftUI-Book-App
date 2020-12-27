//
//  TestView.swift
//  Projet4A
//
//  Created by Sogekingu on 26/12/2020.
//

import SwiftUI

let apiURL = "https://www.googleapis.com/books/v1/volumes?q=search+terms"

class BooksViewModel: ObservableObject {
    
    @Published var message = "Message from BooksViewModel"
    
    @Published var books: [Book] = [
        Book(title: "Title", author: "Author")
    ]
    
    func changement(){
        self.message = "NEW"
        self.books.append(Book(title: "New title", author: "New author"))
    }
    
}

struct TestView: View {
    @ObservedObject var booksVM = BooksViewModel()
    @State private var show = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(booksVM.message)
                ForEach(booksVM.books) { book in
                    BookCellView(book: book)
                    .sheet(isPresented: $show, content: {
                        Text("New screen")
                    })
                    .padding()
                }
            }
            .navigationTitle("Scroll view")
            .navigationBarItems(trailing: Button(action: {
                print("Fetching DATA")
                self.booksVM.changement()
            }, label: {
                Text("Refresh")
            }))
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
