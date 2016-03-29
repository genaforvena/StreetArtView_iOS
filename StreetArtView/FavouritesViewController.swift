//
//  File.swift
//  StreetArtView
//
//  Created by Ilya Mozerov on 3/24/16.
//  Copyright © 2016 street art view. All rights reserved.
//

import UIKit

class FavouritesViewController: UICollectionViewController {
    var artObjects: Array<ArtObjectUi> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artObjects = [ArtObjectUi.createStub("13", name: "Vasya's"), ArtObjectUi.createStub("1223", name: "Peter"), ArtObjectUi.createStub("1223", name: "Peter"), ArtObjectUi.createStub("1223", name: "Peter")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // #pragma mark UICollectionViewDataSource
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView?) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView?, numberOfItemsInSection section: Int) -> Int {
        return artObjects.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : ArtObjectItemView = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ArtObjectItemView
        return cell
    }
}
