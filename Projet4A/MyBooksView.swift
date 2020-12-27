//
//  ListView.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import SwiftUI

struct MyBooksView: View {
    @State private var isReadingTimeShowed: Bool = false
    @State private var isAddBookShowed: Bool = false
    @State private var isInfoShowed: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                List(myBooks) { myBook in
                    NavigationLink(
                        destination: BookDetailView(currentBook: myBook),
                        label: {BookCellView(book: myBook)}
                    )
                    .navigationTitle(Text("My Books"))
                    .navigationBarItems(
                        trailing:
                            InfoButtonView(
                                size: 25,
                                action: {isInfoShowed.toggle()}
                            ).sheet(isPresented:$isInfoShowed, content: {Text("Info")})
                    )
                }
                
                HStack(){
                    ReadingTimeButtonView(size: 25, action: {
                        isReadingTimeShowed.toggle()
                    })
                        .shadow(radius: 10)
                        .fullScreenCover(isPresented: $isReadingTimeShowed, content: {
                            ChronoView(myBooks: myBooks)
                        })
                    
                    Spacer()
                    
                    AddBookButtonView(size: 25, action: {
                        isAddBookShowed.toggle()
                    })
                        .shadow(radius: 10)
                        .sheet(isPresented: $isAddBookShowed, content: {
                            Text("Add Book")
                        })
                }
                .padding(10)
            }
        }
    }
}

struct MyBooksView_Previews: PreviewProvider {
    static var previews: some View {
        MyBooksView()
    }
}
