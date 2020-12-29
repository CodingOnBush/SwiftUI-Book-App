//
//  Book.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import Foundation

class Book: Identifiable, ObservableObject {
    let uuid: UUID
    let id: String
    let frontCoverImageLink: String
    let title: String
    let author: String
    let description: String
    let pageNumber: Int
    let language: String
    
    init(id: String, title: String, author: String, frontCoverImageLink: String, description: String, language: String, pageNumber: Int) {
        self.uuid = UUID()
        self.id = id
        self.frontCoverImageLink = frontCoverImageLink
        self.title = title
        self.author = author
        self.pageNumber = pageNumber
        self.language = language
        self.description = description
    }
}
