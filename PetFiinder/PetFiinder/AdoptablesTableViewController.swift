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
        
        let dogAthena = Dog(name: "Athena", age: "Two", imageName: "Athena - Chihuahua", breed: "Chihuahua", size: "Small", gender: "Female")
        self.dogsArray.append(dogAthena)
        
        
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.dogsArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DogCell", forIndexPath: indexPath)
        
        let dirtyDog = self.dogsArray[indexPath.row]
        
        

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}
