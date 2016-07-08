//
//  AllDogsViewController.swift
//  PetFiinder
//
//  Created by Joe Moss on 7/8/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class AllDogsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return DataStore.sharedInstance.numberOfDogs()
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! AllDogsCollectionViewCell
        
        let dawg = DataStore.sharedInstance.dogsAtIndex(indexPath.row)
        
        if let imageDog = dawg?.image {
            
            cell.allDogsImageView.image = imageDog
            
        }
        
        return cell
    }

}
