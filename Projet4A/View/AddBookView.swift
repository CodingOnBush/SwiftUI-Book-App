//
//  AddBookView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var bookLibrary: BookLibraryManager
    @State var research = ""
    
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
                        bookLibrary.research(research: research)
                        // Baisser le clavier
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 25.0))
                    })
                }.padding(.horizontal, 20)
                
                ScrollView {
                    ForEach(bookLibrary.booksResult) { currentBook in
                        HStack {
                            BookCellView(book: currentBook).padding(.leading, 20)
                            Button(action: {
                                //bookLibrary.addToMyBooks(book: currentBook)
                                print("AFAOE")
                                
                                let newBook = BookEntity(context: viewContext)
                                newBook.id = currentBook.id
                                newBook.title = currentBook.title
                                newBook.author = currentBook.author
                                newBook.frontCoverImageLink = currentBook.frontCoverImageLink
                                newBook.myDescription = currentBook.description
                                newBook.myLanguage = currentBook.language
                                newBook.pageNumber = currentBook.pageNumber
                                
                                do {
                                    try viewContext.save()
                                } catch {
                                    print("Erreur d'enregistrement de context")
                                }
                                presentationMode.wrappedValue.dismiss()
                                //bookLibrary.booksResult = [Book]()
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
    @StateObject static var bookLibrary = BookLibraryManager()
    
    static var previews: some View {
        AddBookView(bookLibrary: bookLibrary)
    }
}
