//
//  AuthorUi.swift
//  StreetArtView
//
//  Created by Ilya Mozerov on 3/25/16.
//  Copyright © 2016 street art view. All rights reserved.
//

import Foundation

class AuthorUi {
    var id: String?
    var name: String?
    var photoUrl: String?
    
    init(realmObject: RealmAuthor) {
        id = realmObject.id
        name = realmObject.name
        photoUrl = realmObject.photo
    }
}