//
//  MyBooksHorizontalView.swift
//  Projet4A
//
//  Created by Sogekingu on 25/12/2020.
//

import SwiftUI

struct MyBooksHorizontalView: View {
    var myBooks: [Book]
    var height: Int
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(myBooks){ myBook in
                    FrontCover(book: myBook, height: height)
                }
            }
            .padding(.leading, 15)
        }
    }
}

struct MyBooksHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        MyBooksHorizontalView(myBooks: myBooks, height: 200)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
