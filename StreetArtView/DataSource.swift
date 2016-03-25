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
    func listArtObjects() -> Observable<Array<ArtObjectUi>>
    func getArtObject(id: String) -> ArtObjectUi
    func listFavourites() -> Observable<Array<ArtObjectUi>>
    func changeFouriteStatus(artObjectId: String) -> Bool
}