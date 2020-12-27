//
//  BookDetailView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

struct BookDetailView: View {
    var currentBook: Book
    
    var body: some View {
        VStack {
            FrontCover(book: currentBook, height: 300)
            Text(currentBook.title)
            Button(action: {
                myBooks.append(currentBook)
            }, label: {
                Text("Ajouter")
            })
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(currentBook: myBooks[0])
    }
}
