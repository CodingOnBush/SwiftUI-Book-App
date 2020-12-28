//
//  Actu.swift
//  Projet4A
//
//  Created by Sogekingu on 28/12/2020.
//

import Foundation

class Actu: ObservableObject {

    @Published var booksResult: [Book] = [
        Book(title: "Title8", author: "Author8"),
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title2", author: "Author2")
    ]
    
    @Published var allBooks: [Book] = myBooks

    func changement(){
        
    }
    
    func addToMyBooks(book: Book){
        booksResult.append(book)
    }
    
    func removeFromMyBooks(book: Book){
//        if let i = booksResult.firstIndex(of: book) {
//            booksResult.remove(at: i)
//            print("\(book.title) Removed")
//        }
    }

}
