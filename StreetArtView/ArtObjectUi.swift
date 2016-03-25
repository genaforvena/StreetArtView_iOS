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
}