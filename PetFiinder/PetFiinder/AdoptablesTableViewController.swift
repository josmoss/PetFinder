//
//  AdoptablesTableViewController.swift
//  PetFiinder
//
//  Created by Joe Moss on 7/6/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class AdoptablesTableViewController: UITableViewController {
    
    var dogsArray = [Dog]()
    var currentDog: Dog?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Athena = Dog(name: "Athena", age: "Adult", imageName: "d1Athena", breed: "Chihuahua", size: "Small", gender: "Female")
        self.dogsArray.append(Athena)
        
        let Audi = Dog(name: "Audi", age: "Young Adult", imageName: "d2Audi", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.dogsArray.append(Audi)
        
        let Basil = Dog(name: "Basil", age: "Adult", imageName: "d3Basil", breed: "Crossbreed", size: "Large", gender: "Male")
        self.dogsArray.append(Basil)
        
        let Beaufort = Dog(name: "Beaufort", age: "Adult", imageName: "d4Beaufort", breed: "Hound", size: "Large", gender: "Male")
        self.dogsArray.append(Beaufort)
        
        let Biroldo = Dog(name: "Biroldo", age: "Adult", imageName: "d5Biroldo", breed: "Crossbreed", size: "Small", gender: "Male")
        self.dogsArray.append(Biroldo)
        
        let Calvin = Dog(name: "Calvin", age: "Senior", imageName: "d6Calvin", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.dogsArray.append(Calvin)
        
        let Caspian = Dog(name: "Caspian", age: "Young Adult", imageName: "d7Caspian", breed: "Pit Bull Terrier", size: "Large", gender: "Male")
        self.dogsArray.append(Caspian)
        
        let Cher = Dog(name: "Cher", age: "Adult", imageName: "d8Cher", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.dogsArray.append(Cher)
        
        let Cora = Dog(name: "Cora", age: "Adult", imageName: "d9Cora", breed: "Pit Bull Terrier", size: "Large", gender: "Female")
        self.dogsArray.append(Cora)
        
        let Cotechino = Dog(name: "Cotechino", age: "Senior", imageName: "d10Cotechino", breed: "Crossbreed", size: "Small", gender: "Male")
        self.dogsArray.append(Cotechino)
        
        let Daisy = Dog(name: "Daisy", age: "Young Adult", imageName: "d11Daisy", breed: "Pit Bull Terrier", size: "Medium", gender: "Female")
        self.dogsArray.append(Daisy)
        
        let Flick = Dog(name: "Flick", age: "Adult", imageName: "d12Flick", breed: "Pit Bull Terrier", size: "Large", gender: "Male")
        self.dogsArray.append(Flick)
        
        let Froggers = Dog(name: "Froggers", age: "Senior", imageName: "d13Froggers", breed: "Boston Terrier", size: "Medium", gender: "Male")
        self.dogsArray.append(Froggers)
        
        let Hendrick = Dog(name: "Hendrick", age: "Senior", imageName: "d14Hendrick", breed: "Crossbreed", size: "Large", gender: "Male")
        self.dogsArray.append(Hendrick)
        
        let Jude = Dog(name: "Jude", age: "Senior", imageName: "d15Jude", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.dogsArray.append(Jude)
        
        let Kellie = Dog(name: "Kellie", age: "Adult", imageName: "d16Kellie", breed: "Rat Terrier", size: "Adult", gender: "Female")
        self.dogsArray.append(Kellie)
        
        let Kevin = Dog(name: "Kevin", age: "Adult", imageName: "d17Kevin", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.dogsArray.append(Kevin)
        
        let Lady = Dog(name: "Lady", age: "Adult", imageName: "d18Lady", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.dogsArray.append(Lady)
        
        let Liesl = Dog(name: "Liesl", age: "Young Adult", imageName: "d19Liesl", breed: "Pit Bull Terrier", size: "Medium", gender: "Female")
        self.dogsArray.append(Liesl)
        
        let Lucy = Dog(name: "Lucy", age: "Young Adult", imageName: "d20Lucy", breed: "Crossbreed", size: "Large", gender: "Female")
        self.dogsArray.append(Lucy)
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.dogsArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DogCell", forIndexPath: indexPath) as! DogsTableViewCell
        
        let dirtyDog = self.dogsArray[indexPath.row]
        
        cell.dogImageView.image = UIImage(named: dirtyDog.imageName)
        cell.nameLabel.text = dirtyDog.name
        cell.breedLabel.text = dirtyDog.breed

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}
