//
//  ListView.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import SwiftUI

struct ListBookView: View {
    @State private var isReadingTimeShowed: Bool = false
    @State private var isAddBookShowed: Bool = false
    @State private var isInfoShowed: Bool = false
    @ObservedObject var bookLibrary: BookLibrary
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                List(bookLibrary.myBooks) { myBook in
                    NavigationLink(
                        destination: BookDetailView(currentBook: myBook, deleteAction: {
                            bookLibrary.removeFromMyBooks(id: myBook.id)
                        }),
                        label: {BookCellView(book: myBook)}
                    )
                    .navigationTitle(Text("My Books"))
                    .navigationBarItems(trailing: InfoButton(isInfoShowed: $isInfoShowed))
                }
                .listStyle(GroupedListStyle())
                
                AddBookButtonView(size: 25, action: {
                    isAddBookShowed.toggle()
                })
                .shadow(radius: 10)
                .sheet(isPresented: $isAddBookShowed, content: {
                    AddBookView(bookLibrary: bookLibrary, addAction: {})
                })
                .padding(10)
            }
        }
    }
}

struct InfoButton: View {
    @Binding var isInfoShowed: Bool
    
    var body: some View {
        Button(
            action: { isInfoShowed.toggle()},
            label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 25))
                    .padding(5)
            }
        )
        .sheet(
            isPresented:$isInfoShowed,
            content: {
                Text("Info")
            }
        )
    }
}


struct MyBooksView_Previews: PreviewProvider {
    @StateObject static var bookLibrary = BookLibrary()
    
    static var previews: some View {
        ListBookView(bookLibrary: bookLibrary)
    }
}
