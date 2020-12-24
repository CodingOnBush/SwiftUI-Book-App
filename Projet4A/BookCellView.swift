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
        self.progress = book.currentPage/book.pageNumber
    }
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Rectangle().fill(Color.red)
                        .border(Color.blue, width: 10)
                    Image(book.frontCover)
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 70, height: CGFloat(abs(cellHeight-10)), alignment: .topLeading)
                .clipped()
                
                VStack(alignment: .leading){
                    Group{
                        Text(book.title)
                            .font(.custom("BookTitle", size: 25.0))
                        Divider()
                        Text(book.author)
                            .font(.custom("author", size: 15.0))
                    }
                    .lineLimit(1)
                }
                
                Spacer()
            }
            
            ProgressBarView(progress: CGFloat(book.currentPage)/CGFloat(book.pageNumber), defaultWidth: 350)
            
            HStack{
                Spacer()
                Text(String(format: "%.2f", progress)+"%")
                Spacer()
                Text("\(Int(book.currentPage))/\(Int(book.pageNumber))")
                Spacer()
            }
            .font(.system(size: 20))
            .foregroundColor(.black)
            
            Spacer()
        }
        .frame(height: CGFloat(abs(cellHeight)), alignment: .leading)
        .padding()
    }
}

struct BookCellView_Previews: PreviewProvider {
    static var previews: some View {
        BookCellView(book: myBooks[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
