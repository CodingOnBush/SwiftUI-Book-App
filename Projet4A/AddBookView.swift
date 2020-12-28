//
//  AddBookView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

class BookListResult: ObservableObject {

    @Published var booksResult: [Book] = [
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title2", author: "Author2")
    ]
    
    @Published var allBooks: [Book] = myBooks

    func changement(){
        self.booksResult.append(Book(title: "New title", author: "New author"))
        getData()
    }
    
    func getData(){
        
    }
    
    func addToMyBooks(book: Book){
        allBooks.append(book)
    }
    
    func removeFromMyBooks(book: Book){
        if let i = booksResult.firstIndex(of: book) {
            booksResult.remove(at: i)
            print("\(book.title) Removed")
        }
    }

}

struct AddBookView: View {
    @ObservedObject var booksVM = BookListResult()
    @State var research = ""
    @State private var show: Bool = false
    @State private var isAdded: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Yoww", text: $research)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disableAutocorrection(true)
                        .font(.system(size: CGFloat(30)))
                    Spacer()
                    Button(action: {
                        booksVM.changement()
                    }, label: {
                        Text("GO")
                    })
                }.padding(.horizontal, 20)
                
                ScrollView {
                    ForEach(booksVM.booksResult) { myBook in
                        BookCellView(book: myBook).padding()
                    }
                }
                
            }.navigationTitle("Find a book")
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}
