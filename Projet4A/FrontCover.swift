//
//  FrontCover.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct FrontCover: View {
    var book: Book
    var height: Int
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.red)
                .border(Color.gray, width: 10)
                .frame(width: CGFloat(Double(height)/1.5), height: CGFloat(height), alignment: .topLeading)
                .clipped()

            Text(book.title)
                .frame(width: CGFloat(Double(height-45)/1.5), height: CGFloat(height-30))
            
            Image(book.frontCover)
                .resizable()
                .scaledToFit()
                .frame(width: CGFloat(Double(height)/1.5), height: CGFloat(height), alignment: .topLeading)
                .clipped()
        }
    }
}

struct FrontCover_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrontCover(book: myBooks[0], height: 200)
            FrontCover(book: myBooks[0], height: 200)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
