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
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                List(myBooks) { myBook in
                    NavigationLink(
                        destination: BookDetailView(currentBook: myBook, addAction: {}, deleteAction: {}),
                        label: {BookCellView(book: myBook)}
                    )
                    .navigationTitle(Text("My Books"))
                    .navigationBarItems(trailing: infoButton())
                }
                .listStyle(GroupedListStyle())
                
                AddBookButtonView(size: 25, action: {
                    isAddBookShowed.toggle()
                })
                .shadow(radius: 10)
                .sheet(isPresented: $isAddBookShowed, content: {
                    AddBookView()
                })
                .padding(10)
            }
        }
    }
    
    func infoButton() -> some View {
        return
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
    static var previews: some View {
        ListBookView()
    }
}
