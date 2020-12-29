//
//  AddBookView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

struct AddBookView: View {
    @ObservedObject var bookLibrary: BookLibrary
    @State var research = ""
    @State private var show: Bool = false
    @State private var isAdded: Bool = false
    @State private var addedBook: Book?
    let addAction: () -> Void
    @Environment(\.presentationMode) var presentationMode
    
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
                        bookLibrary.myBooks.append(Book(title: "ADZA", author: "2AE"))
                    }, label: {
                        Text("GO")
                    })
                }.padding(.horizontal, 20)
                
                ScrollView {
                    ForEach(bookLibrary.result) { currentBook in
                        HStack {
                            BookCellView(book: currentBook).padding(.leading, 20)
                            Button(action: {
                                bookLibrary.addToMyBooks(book: currentBook)
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "plus.square")
                                    .font(.system(size: 30))
                            }).padding()
                        }
                    }
                }
                
            }.navigationTitle("Find a book")
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    @StateObject static var bookLibrary = BookLibrary()
    
    static var previews: some View {
        AddBookView(bookLibrary: bookLibrary, addAction: {})
    }
}
