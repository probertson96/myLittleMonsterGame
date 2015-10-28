//
//  Monster.swift
//  myLittleMonster
//
//  Created by Patrick Robertson on 28/10/2015.
//  Copyright © 2015 Patrick Robertson. All rights reserved.
//

import Foundation
import UIKit

class MonsterImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        var imageArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let image = UIImage(named: "idle\(x).png")
            imageArray.append(image!)
        }
        
        self.animationImages = imageArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imageArray = [UIImage]()
        for var x = 1; x <= 5; x++ {
            let image = UIImage(named: "dead\(x).png")
            imageArray.append(image!)
        }
        
        self.animationImages = imageArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
        
    }
}