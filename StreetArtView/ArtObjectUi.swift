//
//  ArtObjectUi.swift
//  StreetArtView
//
//  Created by Ilya Mozerov on 3/25/16.
//  Copyright © 2016 street art view. All rights reserved.
//

import Foundation

class ArtObjectUi {
    var id: String?
    var name: String?
    var authors: Array<AuthorUi>?
    var description: String?
    var thumbPicUrl: String?
    var picsUrl: Array<String>?
    var lat: Double?
    var lng: Double?
    var address: String?
    var isFavourite: Bool?
    
    init(realmObject: RealmArtObject) {
        id = realmObject.id
        address = realmObject.location?.address
        name = realmObject.name
        authors = realmObject.authors.map({realmAuthor in
                        AuthorUi(realmObject: realmAuthor)})
        description = realmObject.description
        thumbPicUrl = realmObject.thumbPicUrl
        picsUrl = realmObject.picUrls.map({realmString in realmString.value})
        lat = realmObject.location?.lat
        lng = realmObject.location?.lng
        isFavourite = realmObject.isFavourite
    }
    
    static func createStub(id: String, name: String) -> ArtObjectUi {
        return ArtObjectUi(id: id, name: name)
    }
    
    private init(id: String, name: String) {
        self.id = id
        self.name = name
        self.authors = [AuthorUi.createStub("ty", name: "naem")]
        self.description = "Some description"
        self.thumbPicUrl = ""
        self.picsUrl = []
        self.lat = 45
        self.lng = 45
        self.address = "Some address"
        self.isFavourite = false
    }
}