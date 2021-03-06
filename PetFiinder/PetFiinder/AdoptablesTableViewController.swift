//
//  AdoptablesTableViewController.swift
//  PetFiinder
//
//  Created by Joe Moss on 7/6/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class AdoptablesTableViewController: UITableViewController {
    
    @IBOutlet var adoptTableView: UITableView!
    
    var currentDog : Dog?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        
        self.tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 60))
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.adoptTableView.reloadData()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataStore.sharedInstance.favoriteNumberOfDogs()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DogCell", forIndexPath: indexPath) as! DogsTableViewCell
        
        let dirtyDog = DataStore.sharedInstance.favoriteAtIndex(indexPath.row)
        
        if let imageDog = dirtyDog?.image {
            
            cell.dogImageView.image = imageDog

        }
            
        cell.nameLabel.text = dirtyDog?.name
        cell.breedLabel.text = dirtyDog?.breed
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentDog = DataStore.sharedInstance.favoriteAtIndex(indexPath.row)
        
        self.performSegueWithIdentifier("ProfileSegue", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ProfileSegue" {
            
            if let controller = segue.destinationViewController as? ProfileViewController {
                controller.theDog = self.currentDog
                
            } else {
                print("Not the correct segue")
            }
        }
        
    }
    
    @IBAction override func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        print("unwindSegue called")
    }

}
