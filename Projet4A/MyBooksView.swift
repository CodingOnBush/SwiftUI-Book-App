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
                        BookCellView(book: myBook).padding()
                    }
                }
                .navigationTitle(Text("My Books"))
                .navigationBarItems(trailing: Button(action: {
                    // Open Info view
                }, label: {
                    Image(systemName: "info.circle")
                }).font(.system(size: 20))
                )
            }
            
            HStack(){
                MyButtonView(buttonName: "Reading Time", backgroundColor: Color.green, textColor: Color.white, fontSize: 25)
                Spacer()
                MyButtonView(buttonName: "Add Book", backgroundColor: Color.blue, textColor: Color.white, fontSize: 25)
            }
            .padding()
        }
    }
}

struct MyBooksView_Previews: PreviewProvider {
    static var previews: some View {
        MyBooksView()
    }
}
