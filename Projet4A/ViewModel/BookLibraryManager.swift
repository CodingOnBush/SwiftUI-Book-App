//
//  Books.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import Foundation
import SwiftyJSON


class BookLibraryManager: ObservableObject {
    @Published var booksResult = [Book]()
    @Published var myBooks = [Book]()
    let urlString = "https://www.googleapis.com/books/v1/volumes?q="
    
    func removeFromMyBooks(id: String) {
        myBooks = myBooks.filter{$0.id != id}
    }
    
    func addToMyBooks(book: Book) {
        myBooks.append(book)
    }
    
    func research(research: String) {
        var currentUrlString = self.urlString
        var myResearch = research
        print(myResearch)
        myResearch = myResearch.folding(options: .diacriticInsensitive, locale: .current)
        print(myResearch)
        currentUrlString.append(myResearch)
        print("My current URL is \(currentUrlString)")
        loadData(urlString: currentUrlString)
    }
    
    func loadData(urlString: String){
        let limit = 30
        var count = 0
        self.booksResult = [Book]()

        URLSession(configuration: .default).dataTask(with: URL(string: urlString)!) { (data, _, err) in
            if err != nil{
                print("ERREUR :")
                print((err?.localizedDescription)!)
                return
            }
            let json = try! JSON(data: data!)
            let items = json["items"].array!
            
            for i in items{
                count += 1
                let id = i["id"].stringValue
                let title = i["volumeInfo"]["title"].stringValue
                print(title)
                var author = ""
                if i["volumeInfo"]["authors"].array != nil{
                    let authors = i["volumeInfo"]["authors"].array!
                    for j in authors{
                        author += "\(j.stringValue)"
                    }
                }else {
                    author = "Author unknown"
                }
                
                let description = i["volumeInfo"]["description"].stringValue
                let imurl = i["volumeInfo"]["imageLinks"]["thumbnail"].stringValue
                let language = i["volumeInfo"]["language"].stringValue
                let pageNumber = i["volumeInfo"]["pageCount"].stringValue
                DispatchQueue.main.async {
                    self.booksResult.append(
                        Book(
                            id: id,
                            title: title,
                            author: author,
                            frontCoverImageLink: imurl,
                            description: description,
                            language: language,
                            pageNumber: pageNumber
                        )
                    )
                }
                
                // Pour avoir une limite du nombre livre affiché
                if count >= limit {
                    count = 0
                    break
                }
            }
        }.resume()
    }
}
