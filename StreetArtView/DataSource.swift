//
//  DataSource.swift
//  StreetArtView
//
//  Created by Ilya Mozerov on 3/25/16.
//  Copyright © 2016 street art view. All rights reserved.
//

import Foundation
import RealmSwift
import RxSwift

protocol IDataSource {
//    func insert(artWorks: List<ArtWork>)
    func listArtObjects() -> Array<ArtObjectUi>
    func getArtObject(id: String) -> ArtObjectUi
    func listFavourites() -> Array<ArtObjectUi>
    func changeFavouriteStatus(artObjectId: String) -> Bool
}

class DataSource : IDataSource {
    static let instance: IDataSource = DataSource()
    let realm = try! Realm()
    
    private init() {}
    
    func listArtObjects() -> Array<ArtObjectUi> {
        var uiObjects = [ArtObjectUi]()
        
        realm.objects(RealmArtObject)
            .forEach({ realmObject in
                uiObjects.append(ArtObjectUi(realmObject: realmObject))
            })
        
        return uiObjects
    }
    
    func getArtObject(id: String) -> ArtObjectUi {
        let realmObject = realm.objectForPrimaryKey(RealmArtObject.self, key: id)
        return ArtObjectUi(realmObject: realmObject!)
    }
    
    func listFavourites() -> Array<ArtObjectUi> {
        return listArtObjects().filter({artObject in artObject.isFavourite ?? false})
    }
    
    func changeFavouriteStatus(id: String) -> Bool {
        let realmObject = realm.objectForPrimaryKey(RealmArtObject.self, key: id)
        
        let isFavouriteNow = !(realmObject?.isFavourite)!
        try! realm.write {
            realmObject?.isFavourite = isFavouriteNow
        }
        
        return isFavouriteNow
    }
}