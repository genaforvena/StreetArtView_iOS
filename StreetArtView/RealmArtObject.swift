//
//  RealmArtObject.swift
//  StreetArtView
//
//  Created by Ilya Mozerov on 3/25/16.
//  Copyright © 2016 street art view. All rights reserved.
//
import RealmSwift
import Foundation

class RealmArtObject: Object {
    dynamic var id: String?
    dynamic var name: String?
    var authors: List<RealmAuthor> = List()
    dynamic var objectDescription: String?
    dynamic var thumbPicUrl: String?
    dynamic var location: RealmLocation?
    var picUrls: List<RealmString> = List()
    dynamic var isFavourite: Bool = false
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
