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
    var isSelected: Bool = false
    
    var body: some View {
        ZStack{
            Group {
                Rectangle()
                    .fill(Color.red)
                    .border(Color.gray, width: 10)
                // TODO: Si pas d'image on met le titre du livre au milieu
                Image(book.frontCover)
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: CGFloat(Double(height)/1.5), height: CGFloat(height), alignment: .topLeading)
            .clipped()
            
            if isSelected {
                Rectangle()
                    .fill(Color.gray)
                    .border(Color.black, width: 10)
                    .opacity(0.8)
                    .frame(width: CGFloat(Double(height+10)/1.5), height: CGFloat(height+10), alignment: .topLeading)
            }
        }
    }
}

struct FrontCover_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrontCover(book: myBooks[0], height: 200, isSelected: true)
            FrontCover(book: myBooks[0], height: 200, isSelected: false)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
