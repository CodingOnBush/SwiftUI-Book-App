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
            Rectangle().fill(Color.red)
                .border(Color.blue, width: 10)
            // TODO: Si pas d'image on met le titre du livre au milieu
            Image(book.frontCover)
                .resizable()
                .scaledToFit()
        }
        .frame(width: CGFloat(Double(height)/1.5), height: CGFloat(height), alignment: .topLeading)
        .clipped()
    }
}

struct FrontCover_Previews: PreviewProvider {
    static var previews: some View {
        FrontCover(book: myBooks[0], height: 200)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
