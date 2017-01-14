//
//  Book.swift
//  LibraryApp_Realm
//
//  Created by Anthony Whitaker on 1/13/17.
//  Copyright © 2017 Anthony Whitaker. All rights reserved.
//

import Foundation
import RealmSwift

class Book: Object {
    
    dynamic var isbn: String = ""
    dynamic var title: String = ""
    dynamic var author: String = ""
    
    let pages = LinkingObjects(fromType: Page.self, property: "book")
    
    convenience init(isbn: String, title: String, author: String) {
        self.init()
        self.isbn = isbn
        self.title = title
        self.author = author
    }
    
    override public static func primaryKey() -> String? {
        return "isbn"
    }
}
