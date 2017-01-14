//
//  Page.swift
//  LibraryApp_Realm
//
//  Created by Anthony Whitaker on 1/13/17.
//  Copyright © 2017 Anthony Whitaker. All rights reserved.
//

import Foundation
import RealmSwift

class Page: Object {
    
    dynamic var book: Book?
    dynamic var number: Int = 0
    dynamic var text: String = ""
    dynamic var imageName: String?
    
    dynamic var compoundKey: String = "-0"
    
    convenience init(book: Book, pageNumber: Int, pageText: String, imageName: String? = nil) {
        self.init()
        self.book = book
        self.number = pageNumber
        self.text = pageText
        self.imageName = imageName
        self.compoundKey = "\(self.book?.title)-\(self.number)"
    }
    
    override public static func primaryKey() -> String? {
        return "compoundKey"
    }
}
