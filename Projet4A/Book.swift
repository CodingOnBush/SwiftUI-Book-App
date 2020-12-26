//
//  Book.swift
//  Projet4A
//
//  Created by Sogekingu on 20/12/2020.
//

import Foundation

struct Book: Identifiable {
    let id: UUID
    let frontCover: String
    let title: String
    let author: String
    let currentPage: Double
    let pageNumber: Double
    let language: String
    
    init(title: String, author: String) {
        self.id = UUID()
        self.frontCover = id.uuidString
        self.title = title
        self.author = author
        self.currentPage = 100
        self.pageNumber = 200
        self.language = "Français"
    }
}
