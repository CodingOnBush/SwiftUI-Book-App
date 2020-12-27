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
    var isSlected: Bool = false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(myBooks){ myBook in
                    Button(action: {}, label: {
                        FrontCover(book: myBook, height: height, isSelected: isSlected)
                    })
                }
            }
            .padding(.leading, 15)
        }
    }
}

struct MyBooksHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyBooksHorizontalView(myBooks: myBooks, height: 200, isSlected: true)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
