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
    dynamic var address?
    dynamic var lat?
    dynamic var lng?
    
    override static func primaryKey() -> String? {
        return "id"
    }
}