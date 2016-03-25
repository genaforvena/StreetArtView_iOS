//
//  RealmAuthor.swift
//  StreetArtView
//
//  Created by Ilya Mozerov on 3/25/16.
//  Copyright © 2016 street art view. All rights reserved.
//

import RealmSwift
import Foundation

class RealmAuthor: Object {
    dynamic var id: String?
    dynamic var name: String?
    dynamic var photo: String?
    
    override static func primaryKey() -> String? {
        return "id"
    }
}