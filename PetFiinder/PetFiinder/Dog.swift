//
//  Dog.swift
//  PetFiinder
//
//  Created by Joe Moss on 7/6/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class Dog: NSObject {
    
    var name : String
    var age : String
    var imageName : String
    var breed : String
    var size : String
    var gender : String
    
    var image : UIImage? {
        return UIImage(named: self.imageName)
    }
    
    init(name: String, age: String, imageName: String, breed: String, size: String, gender: String) {
        self.name = name
        self.age = age
        self.imageName = imageName
        self.breed = breed
        self.size = size
        self.gender = gender
    }

}
