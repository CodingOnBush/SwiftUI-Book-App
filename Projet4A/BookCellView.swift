//
//  BookCellView.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import SwiftUI

struct BookCellView: View {
    let book: Book
    let cellHeight: Int = 100
    var progress: Double
    
    init(book: Book) {
        self.book = book
        self.progress = book.currentPage/book.pageNumber*100
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.green)
                .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 4)
            VStack{
                Spacer()
                
                HStack{
                    FrontCover(book: book, height: cellHeight)
                    
                    VStack(alignment: .leading){
                        Group{
                            Text(book.title)
                                .font(.custom("BookTitle", size: 25.0))
                                .foregroundColor(Color.white)
                            Divider()
                            Text(book.author)
                                .font(.custom("author", size: 15.0))
                                .foregroundColor(Color.white)
                        }
                        .lineLimit(1)
                    }
                    Spacer()
                }
                
                ProgressBarView(progress: self.progress, defaultWidth: 350)
                
                HStack{
                    Spacer()
                    Text(String(format: "%.2f", progress)+"%")
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("\(Int(book.currentPage))/\(Int(book.pageNumber))")
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .font(.system(size: 20))
                .foregroundColor(.black)
                
                Spacer()
            }
            .padding()
            .frame(alignment: .center)
        }
    }
}

struct BookCellView_Previews: PreviewProvider {
    static var previews: some View {
        BookCellView(book: myBooks[0])
            .padding()
    }
}
