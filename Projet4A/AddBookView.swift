//
//  AddBookView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

class BookListResult: ObservableObject {

    @Published var booksResult: [Book] = [
        //Book(title: "Title", author: "Author")
    ]

    func changement(){
        self.booksResult.append(Book(title: "New title", author: "New author"))
    }
    
    func getData(){
        
    }

}

struct AddBookView: View {
    @ObservedObject var booksVM = BooksViewModel()
    @State var research = ""
    @State private var show: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Find a book")
                        .font(.callout)
                        .bold()
                HStack {
                    TextField("Yoww", text: $research)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disableAutocorrection(true)
                        .font(.system(size: CGFloat(30)))
                    Spacer()
                    Button(action: {
                        // Rechercher le mot
                        booksVM.changement()
                    }, label: {
                        Text("GO")
                    })
                }
            }.padding()
            
            List(booksVM.books) { myBook in
                Button(action: {
                    show.toggle()
                }, label: {
                    BookCellView(book: myBook)
                }).sheet(isPresented: $show, content: {
                    BookDetailView(currentBook: myBook)
                })
            }
            .listStyle(GroupedListStyle())
            
            Spacer()
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}
