//
//  FirstViewController.swift
//  PetFiinder
//
//  Created by Joe Moss on 7/6/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CardStackDelegate {

    @IBOutlet weak var cardStackView: CardStack!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // IMPORTANT
        self.cardStackView.delegate = self

    }
    
    func cardInterested(dog: Dog) {
        print("interested in \(dog.name)")
        
        DataStore.sharedInstance.addFavoriteDog(dog)
        
    }
    
    func cardNotInterested(dog: Dog) {
        print("not interested in \(dog.name)")
    }


}

