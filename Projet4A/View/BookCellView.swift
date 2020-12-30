//
//  BookCellView.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import SwiftUI

struct BookCellView: View {
    let book: Book
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.green)
                .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 4)
                .frame(width: .none, height: CGFloat(170), alignment: .center)
            
            VStack{
                HStack{
                    FrontCover(book: book, height: 100)
                    
                    VStack(alignment: .leading){
                        Group{
                            Text(book.title)
                                .font(.custom("BookTitle", size: 30.0))
                                .foregroundColor(Color.white)
                                .lineLimit(1)
                            Divider()
                            Text(book.author)
                                .font(.custom("author", size: 20.0))
                                .foregroundColor(Color.white)
                                .lineLimit(1)
                        }
                    }
                }.padding(.top, 10)
                
                Text("\(book.pageNumber) pages")
                    .foregroundColor(Color.white)
                    .font(.system(size: CGFloat(25)))
                    .padding(.bottom, 10)
            }
            .padding(.horizontal, 10)
        }
    }
}

struct BookCellView_Previews: PreviewProvider {
    static var previews: some View {
        BookCellView(book: Book(id: "id", title: "title", author: "author", frontCoverImageLink: "link", description: "description", language: "fr", pageNumber: "23"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
