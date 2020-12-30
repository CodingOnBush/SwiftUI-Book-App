//
//  BookEntity+CoreDataProperties.swift
//  Projet4A
//
//  Created by Sogekingu on 30/12/2020.
//
//

import Foundation
import CoreData


extension BookEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BookEntity> {
        return NSFetchRequest<BookEntity>(entityName: "BookEntity")
    }

    @NSManaged public var id: String
    @NSManaged public var title: String
    @NSManaged public var author: String
    @NSManaged public var frontCoverImageLink: String
    @NSManaged public var myDescription: String
    @NSManaged public var myLanguage: String
    @NSManaged public var pageNumber: String

}

extension BookEntity : Identifiable {

}
