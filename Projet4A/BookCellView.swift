//
//  BookCellView.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import SwiftUI

struct BookCellView: View {
    let book: Book
    let progress: Double
    
    init(book: Book) {
        self.book = book
        self.progress = (book.currentPage/book.pageNumber)*100
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.green)
                .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 4)
                .frame(width: .none, height: CGFloat(180), alignment: .center)
            
            VStack{
                HStack{
                    FrontCover(book: book, height: 100)
                    
                    VStack(alignment: .leading){
                        Group{
                            Text(book.title)
                                .font(.custom("BookTitle", size: 25.0))
                                .foregroundColor(Color.white)
                                .lineLimit(1)
                            Divider()
                            Text(book.author)
                                .font(.custom("author", size: 15.0))
                                .foregroundColor(Color.white)
                                .lineLimit(1)
                        }
                    }
                }.padding(.top, 10)
                
                HStack{
                    Spacer()
                    Text(String(format: "%.2f", progress)+"%")
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("\(Int(book.currentPage))/\(Int(book.pageNumber)) pages")
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .font(.system(size: 20))
                
                ProgressBarView(progress: progress, defaultWidth: 200)
                    .padding(.bottom, 10)
            }
            .padding(.horizontal, 10)
        }
    }
}

struct BookCellView_Previews: PreviewProvider {
    static var previews: some View {
        BookCellView(book: myBooks[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
