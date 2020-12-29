//
//  Books.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import Foundation

class BookLibrary: ObservableObject {
    @Published var myBooks: [Book] = [
        Book(title: "EAIUGDZ", author: "DAZUDH"),
        Book(title: "Title2", author: "Author2"),
        Book(title: "Title3", author: "Author3"),
        Book(title: "Title", author: "Author")
    ]

    @Published var result: [Book] = [
        Book(title: "Title9", author: "Author9"),
        Book(title: "Title", author: "Author"),
        Book(title: "Title", author: "Author")
    ]
    
    func removeFromMyBooks(id: UUID) {
//        ForEach(myBooks.indices) { currentIndice in
//            if myBooks[currentIndice].id == id {
//                self.myBooks.remove(at: currentIndice)
//            }
//        }
        myBooks.removeAll(where: { $0.id == id })
    }
    
    func addToMyBooks(book: Book) {
        myBooks.append(book)
    }

//    let listOfPictures = [
//        URL(string: "https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/3214958/pexels-photo-3214958.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/3225529/pexels-photo-3225529.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/3889855/pexels-photo-3889855.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/2147486/pexels-photo-2147486.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/1371360/pexels-photo-1371360.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/2265876/pexels-photo-2265876.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/1576937/pexels-photo-1576937.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/2265876/pexels-photo-2265876.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/1576937/pexels-photo-1576937.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/2303781/pexels-photo-2303781.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/731217/pexels-photo-731217.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
//        URL(string: "https://images.pexels.com/photos/885880/pexels-photo-885880.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
//    ]

}
