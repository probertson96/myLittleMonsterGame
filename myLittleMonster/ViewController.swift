//
//  ViewController.swift
//  myLittleMonster
//
//  Created by Patrick Robertson on 28/10/2015.
//  Copyright © 2015 Patrick Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImage: UIImageView!
    
    @IBOutlet weak var heartImage: DragImage!
    @IBOutlet weak var foodImage: DragImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Animations
        var imageArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let image = UIImage(named: "idle\(x).png")
            imageArray.append(image!)
        }
        
        monsterImage.animationImages = imageArray
        monsterImage.animationDuration = 0.8
        monsterImage.animationRepeatCount = 0
        monsterImage.startAnimating()
    }
    

}

