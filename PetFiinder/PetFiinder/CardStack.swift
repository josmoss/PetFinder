//
//  CardStack
//
//
//  Created by Phil Wright on 7/6/16.
//  Copyright © 2016 torch. All rights reserved.
//

import UIKit

protocol CardStackDelegate : class {
    func cardInterested(dog: Dog)
    func cardNotInterested(dog: Dog)
}

class CardStack : UIView {
    
    var cards: [CardView] = []
    weak var delegate : CardStackDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        seedDogs()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
        seedDogs()
    }
    
    func seedDogs() {
 
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
    
    func addDog(dog: Dog) {
        
        let card = CardView()
        card.dog = dog
        self.addSubview(card)
        
        card.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: card, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: 0).active = true
        NSLayoutConstraint(item: card, attribute: .Left, relatedBy: .Equal, toItem: self, attribute: .Left, multiplier: 1, constant: 0).active = true
        NSLayoutConstraint(item: card, attribute: .Right, relatedBy: .Equal, toItem: self, attribute: .Right, multiplier: 1, constant: 0).active = true
        NSLayoutConstraint(item: card, attribute: .Bottom, relatedBy: .Equal, toItem: self, attribute: .Bottom, multiplier: 1, constant: 0).active = true
        cards.append(card)
        self.sendSubviewToBack(card)
        
        setupTransforms(0)
        
        setupGestures()
    }
    
    func setupTransforms(percentCompletion: Double) {
        let translationDelta: CGFloat = 6
        
        for (i, card) in cards.enumerate() {
            if i == 0 { continue; }
            
            var translationA, rotationA, scaleA: CGFloat!
            var translationB, rotationB, scaleB: CGFloat!
            
            if i % 2 == 0 {
                translationA = CGFloat(i)*translationDelta
                rotationA = CGFloat(M_PI)/100*CGFloat(i)
                
                translationB = -CGFloat(i-1)*translationDelta
                rotationB = -CGFloat(M_PI)/100*CGFloat(i-1)
            } else {
                translationA = -CGFloat(i)*translationDelta
                rotationA = -CGFloat(M_PI)/100*CGFloat(i)
                
                translationB = CGFloat(i-1)*translationDelta
                rotationB = CGFloat(M_PI)/100*CGFloat(i-1)
            }
            
            scaleA = 1-CGFloat(i)*0.05
            scaleB = 1-CGFloat(i-1)*0.05
            
            let translation = translationA*(1-CGFloat(percentCompletion))+translationB*CGFloat(percentCompletion)
            let rotation = rotationA*(1-CGFloat(percentCompletion))+rotationB*CGFloat(percentCompletion)
            let scale = scaleA*(1-CGFloat(percentCompletion))+scaleB*CGFloat(percentCompletion)
            
            var transform = CGAffineTransformIdentity
            
            transform = CGAffineTransformTranslate(transform, translation, 0)
            transform = CGAffineTransformRotate(transform, rotation)
            transform = CGAffineTransformScale(transform, scale, scale)
            
            
            card.transform = transform
        }
    }
    
    func setupGestures() {
        for card in cards {
            let gestures = card.gestureRecognizers ?? []
            for gesture in gestures {
                card.removeGestureRecognizer(gesture)
            }
        }
        
        if let firstCard = cards.first {
            firstCard.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(CardStack.pan(_:))))
        }
    }
    
    func pan(gesture: UIPanGestureRecognizer) {
        
        let card = gesture.view! as! CardView
        
        let translation = gesture.translationInView(self)
        
        var percent = translation.x / CGRectGetMidX(self.bounds)
        percent = min(percent, 1)
        percent = max(percent, -1)
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.65, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.setupTransforms(abs(Double(percent)))
        }, completion: nil)
        
        if percent > 0.2 && gesture.state == .Ended {
            
            // Important call delegate
            self.delegate?.cardInterested(card.dog)
            
        } else if percent < -0.2 && gesture.state == .Ended {
            
            // Important call delegate
            self.delegate?.cardNotInterested(card.dog)
        }
        
        var transform = CGAffineTransformIdentity
        transform = CGAffineTransformTranslate(transform, translation.x, translation.y)
        transform = CGAffineTransformRotate(transform, CGFloat(M_PI)*percent/30)
        
        card.transform = transform
        
        if gesture.state == .Ended {
            let velocity = gesture.velocityInView(self)
            
            let percentBlock = {
                self.cards.removeAtIndex(self.cards.indexOf(card)!)
                self.setupGestures()
                card.removeGestureRecognizer(card.gestureRecognizers![0])
                
                let slope = translation.y / translation.x
                let distance = max(UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height)
                
                let y = distance*sqrt(1+1/(slope*slope))
                let x = y / slope
                
                let normVelX = velocity.x / x
                let normVelY = velocity.y / y
                
                UIView.animateWithDuration(1.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: normVelX, options: [], animations: { () -> Void in
                    card.center.x = x
                    }, completion: nil)
                
                UIView.animateWithDuration(1.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: normVelY, options: [], animations: { () -> Void in
                    card.center.y = y
                    }, completion: nil)
            }
            
            if percent > 0.2 {
                percentBlock()
            } else if percent < -0.2 {
                percentBlock()
            } else {
                let normVelX = -velocity.x / translation.x
                let normVelY = -velocity.y / translation.y
                
                UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
                    }, completion: nil)
                
                UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: normVelX, options: [], animations: { () -> Void in
                    var transform = CGAffineTransformIdentity
                    transform = CGAffineTransformTranslate(transform, 0, translation.y)
                    card.transform = transform
                    }, completion: nil)
                
                UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: normVelY, options: [], animations: { () -> Void in
                    var transform = CGAffineTransformIdentity
                    transform = CGAffineTransformTranslate(transform, 0, 0)
                    card.transform = transform
                    }, completion: nil)
            }
        
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.65, initialSpringVelocity: 1, options: [], animations: { () -> Void in
                self.setupTransforms(0)
                }, completion: nil)
        }
    }
}