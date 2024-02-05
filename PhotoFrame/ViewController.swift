//
//  ViewController.swift
//  PhotoFrame
//
//  Created by NStudent on 1/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    let characters = ["makima", "denji", "power", "Aki"]
    var currentIndex = 0
    
    
    @IBAction func pressButton(_ sender: UIButton) {
        
        currentIndex = (currentIndex + 1)
        
        if(currentIndex != characters.capacity){
            
            let imageName = characters[currentIndex]
            
            animeImage.image = UIImage(named: imageName)
            
        }
        
        else{
            currentIndex = currentIndex % characters.count
            
            let imageName2 = characters[currentIndex]
            
            animeImage.image = UIImage(named: imageName2)
        }
        
        
        
        
        
    }
    
    @IBOutlet weak var animeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

