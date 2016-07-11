//
//  ProfileViewController.swift
//  PetFiinder
//
//  Created by Joe Moss on 7/10/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var theDog : Dog?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let dog = self.theDog {
            
            self.ageLabel.text = dog.age
            self.sizeLabel.text = dog.size
            self.breedLabel.text = dog.breed
            self.genderLabel.text = dog.gender
            self.nameLabel.text = dog.name
            self.profileImageView.image = UIImage(named: dog.imageName)
            
        }
    }

}
