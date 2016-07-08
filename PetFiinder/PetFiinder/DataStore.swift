//
//  DataStore.swift
//  PetFiinder
//
//  Created by Joe Moss on 7/8/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class DataStore: NSObject {
    
    static let sharedInstance = DataStore()
    private override init() { }
    
    private var addDog = [Dog]()
    private var addFavoriteDog = [Dog]()
    
    func seedDog() {
        
        let Athena = Dog(name: "Athena", age: "Adult", imageName: "d1Athena", breed: "Chihuahua", size: "Small", gender: "Female")
        self.addDog(Athena)
        
        let Audi = Dog(name: "Audi", age: "Young Adult", imageName: "d2Audi", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.addDog(Audi)
        
        let Basil = Dog(name: "Basil", age: "Adult", imageName: "d3Basil", breed: "Crossbreed", size: "Large", gender: "Male")
        self.addDog(Basil)
        
        let Beaufort = Dog(name: "Beaufort", age: "Adult", imageName: "d4Beaufort", breed: "Hound", size: "Large", gender: "Male")
        self.addDog(Beaufort)
        
        let Biroldo = Dog(name: "Biroldo", age: "Adult", imageName: "d5Biroldo", breed: "Crossbreed", size: "Small", gender: "Male")
        self.addDog(Biroldo)
        
        let Calvin = Dog(name: "Calvin", age: "Senior", imageName: "d6Calvin", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.addDog(Calvin)
        
        let Caspian = Dog(name: "Caspian", age: "Young Adult", imageName: "d7Caspian", breed: "Pit Bull Terrier", size: "Large", gender: "Male")
        self.addDog(Caspian)
        
        let Cher = Dog(name: "Cher", age: "Adult", imageName: "d8Cher", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.addDog(Cher)
        
        let Cora = Dog(name: "Cora", age: "Adult", imageName: "d9Cora", breed: "Pit Bull Terrier", size: "Large", gender: "Female")
        self.addDog(Cora)
        
        let Cotechino = Dog(name: "Cotechino", age: "Senior", imageName: "d10Cotechino", breed: "Crossbreed", size: "Small", gender: "Male")
        self.addDog(Cotechino)
        
        let Daisy = Dog(name: "Daisy", age: "Young Adult", imageName: "d11Daisy", breed: "Pit Bull Terrier", size: "Medium", gender: "Female")
        self.addDog(Daisy)
        
        let Flick = Dog(name: "Flick", age: "Adult", imageName: "d12Flick", breed: "Pit Bull Terrier", size: "Large", gender: "Male")
        self.addDog(Flick)
        
        let Froggers = Dog(name: "Froggers", age: "Senior", imageName: "d13Froggers", breed: "Boston Terrier", size: "Medium", gender: "Male")
        self.addDog(Froggers)
        
        let Hendrick = Dog(name: "Hendrick", age: "Senior", imageName: "d14Hendrick", breed: "Crossbreed", size: "Large", gender: "Male")
        self.addDog(Hendrick)
        
        let Jude = Dog(name: "Jude", age: "Senior", imageName: "d15Jude", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.addDog(Jude)
        
        let Kellie = Dog(name: "Kellie", age: "Adult", imageName: "d16Kellie", breed: "Rat Terrier", size: "Adult", gender: "Female")
        self.addDog(Kellie)
        
        let Kevin = Dog(name: "Kevin", age: "Adult", imageName: "d17Kevin", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.addDog(Kevin)
        
        let Lady = Dog(name: "Lady", age: "Adult", imageName: "d18Lady", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.addDog(Lady)
        
        let Liesl = Dog(name: "Liesl", age: "Young Adult", imageName: "d19Liesl", breed: "Pit Bull Terrier", size: "Medium", gender: "Female")
        self.addDog(Liesl)
        
        let Lucy = Dog(name: "Lucy", age: "Young Adult", imageName: "d20Lucy", breed: "Crossbreed", size: "Large", gender: "Female")
        self.addDog(Lucy)
        
    }
    
    func dogsAtIndex(index: Int) -> Dog? {
        if self.addDog.count >= 0 && index < self.addDog.count {
            return self.addDog[index]
        }
        return nil
    }
    
    func addDog(dog: Dog) {
        self.addDog.append(dog)
    }
    
    func numberOfDogs() -> Int {
        
        return self.addDog.count
    }
    
    func favoriteAtIndex(index: Int) -> Dog? {
        if self.addFavoriteDog.count >= 0 && index < self.addFavoriteDog.count {
            return self.addFavoriteDog[index]
        }
        return nil
    }
    
    func addFavoriteDog(dog: Dog) {
        self.addFavoriteDog.append(dog)
    }
    
    func favoriteNumberOfDogs() -> Int {
        
        return self.addFavoriteDog.count
    }


}
