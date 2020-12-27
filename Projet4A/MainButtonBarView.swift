//
//  MainButtonBarView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

struct MainButtonBarView: View {
    var body: some View {
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

struct MainButtonBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainButtonBarView()
    }
}
