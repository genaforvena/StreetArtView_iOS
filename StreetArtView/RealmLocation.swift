//
//  RealmLocation.swift
//  StreetArtView
//
//  Created by Ilya Mozerov on 3/25/16.
//  Copyright © 2016 street art view. All rights reserved.
//

import Foundation
import RealmSwift

class RealmLocation: Object {
    dynamic var address: String?
    dynamic var lat: Double = 0
    dynamic var lng: Double = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}