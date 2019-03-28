//
//  ViewController.swift
//  WarApp
//
//  Created by Lucas Dahl on 10/29/18.
//  Copyright © 2018 Lucas Dahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftSccoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Properties
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Get a random number
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image view based on the random number
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Comapare the random numbers to decide whihc score to update
        if leftRandomNumber > rightRandomNumber {
            
            // Update the score
            leftScore += 1
            
            // Update the score label
            leftSccoreLabel.text = String(leftScore)
            
        } else if rightRandomNumber > leftRandomNumber {
            
            // Update the score
            rightScore += 1
            
            // Update the score label
            rightScoreLabel.text = String(rightScore)
            
        } else if leftRandomNumber == rightRandomNumber {
            
            // TODO: Maybe add an alert?...
            
        } else {
            
            // Incase something else unexpected happened...
            
        } // End if
        
    } // End dealTapped
    
    
} // End class

