//
//  ListView.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import SwiftUI

struct MyBooksView: View {
    var body: some View {
        VStack(){
            NavigationView{
                ScrollView{
                    ForEach(myBooks){ myBook in
                        BookCellView(book: myBook)
                            .padding()
                    }
                }
                .navigationTitle(Text("My Books"))
                .navigationBarItems(trailing: InfoButtonView(size: 25))
            }
            
            HStack(){
                ReadingTimeButtonView(size: 25)
                    .shadow(radius: 10)
                Spacer()
                AddBookButtonView(size: 25)
                    .shadow(radius: 10)
            }
            .padding(10)
        }
    }
}

struct MyBooksView_Previews: PreviewProvider {
    static var previews: some View {
        MyBooksView()
    }
}
