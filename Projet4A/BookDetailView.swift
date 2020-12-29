//
//  BookDetailView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

struct BookDetailView: View {
    @State var currentBook: Book
    let deleteAction: () -> Void
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack
        {
            ScrollView
            {
                FrontCover(book: currentBook, height: 300)
                    .padding(.vertical, 30)

                HStack {
                    Text("Title :")
                    Text(currentBook.title).lineLimit(1)
                    Spacer()
                }.padding()

                HStack {
                    Text("Author :")
                    Text(currentBook.author).lineLimit(1)
                    Spacer()
                }.padding()

                HStack {
                    Text("Language :")
                    Text(currentBook.language).lineLimit(1)
                    Spacer()
                }.padding()

                HStack {
                    Text("Page number :")
                    Text("\(Int(currentBook.pageNumber))").lineLimit(1)
                    Spacer()
                }.padding()
                Spacer()
                
                Button(action: {
                    deleteAction()
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Delete")
                })

                Spacer()
                
            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    @StateObject static var bookLibrary = BookLibrary()
    
    static var previews: some View {
        BookDetailView(currentBook: bookLibrary.myBooks[0], deleteAction: {})
    }
}
