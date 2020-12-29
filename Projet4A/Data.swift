//
//  Books.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import Foundation
import SwiftyJSON
import SDWebImageSwiftUI
import KingfisherSwiftUI

class BookLibrary: ObservableObject {
    @Published var myBooks = [Book]()

    @Published var result = [Book]()
    
    func removeFromMyBooks(uuid: UUID) {
        myBooks.removeAll(where: { $0.uuid == uuid })
    }
    
    func addToMyBooks(book: Book) {
        myBooks.append(book)
    }
    
    init() {
        let url = "https://www.googleapis.com/books/v1/volumes?q=java"
        
        let session = URLSession(configuration: .default)
                 
        session.dataTask(with: URL(string: url)!) { (data, _, err) in

            if err != nil{
                print((err?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            let items = json["items"].array!

            for i in items{
                              
                let id = i["id"].stringValue

                let title = i["volumeInfo"]["title"].stringValue
                
                let language = i["volumeInfo"]["language"].stringValue
                
                let pageNumber = i["volumeInfo"]["pageCount"].int
                
                let authors = i["volumeInfo"]["authors"].array!
                var author = ""
                for j in authors{
                    author += "\(j.stringValue)"
                }

                let description = i["volumeInfo"]["description"].stringValue

                let imurl = i["volumeInfo"]["imageLinks"]["thumbnail"].stringValue
                
                DispatchQueue.main.async {
                    self.result.append(
                        Book(
                            id: id,
                            title: title,
                            author: author,
                            frontCoverImageLink: imurl,
                            description: description,
                            language: language,
                            pageNumber: pageNumber!
                        )
                    )
                }
            }
        }.resume()
    }

}
