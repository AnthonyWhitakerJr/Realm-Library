//
//  BookUserData.swift
//  LibraryApp_Realm
//
//  Created by Anthony Whitaker on 1/13/17.
//  Copyright © 2017 Anthony Whitaker. All rights reserved.
//

import Foundation
import RealmSwift

class BookUserData: Object {
    
    dynamic var book: Book?
    dynamic var currentPage: Int = 0
    dynamic var userId: String = ""
    
    dynamic var compoundKey: String = "-"
    
    convenience init(book: Book, currentPage: Int, userId: String) {
        self.init()
        self.book = book
        self.currentPage = currentPage
        self.userId = userId
        self.compoundKey = "\(userId)-\(book.title)"
    }
    
    override public static func primaryKey() -> String? {
        return "compoundKey"
    }
}
