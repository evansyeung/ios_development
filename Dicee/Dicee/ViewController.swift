//
//  ViewController.swift
//  Dicee
//
//  Created by Evans Yeung on 9/2/19.
//  Copyright © 2019 Evans Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Use our dice image names from Assets.xcassets
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceLeftIndex: Int = 0
    var randomDiceRightIndex: Int = 0

    // IBOutlet is something that changes the appearances of a UI Element
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    // This function only gets trigger at the time in point where the view get loaded up
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }

    // IBAction allows the code to response when a user interacts with it
    // Event: Touch Up Inside means the user has touched/let go of the button while inside the boundaries of the button
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }
    
    // motionEnded is triggered automatically when a motion event is detected and has ended
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceLeftIndex = Int.random(in: 0 ... 5)
        randomDiceRightIndex = Int.random(in: 0 ... 5)
        
        // Set diceImageViews image properly to UIImage (data strucuture)
        // Use UIImage named() to select our other dice image from Assets.xcassets
        diceImageViewLeft.image = UIImage.init(named: diceArray[randomDiceLeftIndex])
        diceImageViewRight.image = UIImage.init(named: diceArray[randomDiceRightIndex])
        
        // diceImageViewLeft.image = UIImage.init(named: "dice\(randomDiceLeftIndex+1)")
        // diceImageViewRight.image = UIImage.init(named: "dice\(randomDiceRightIndex+1)")
    }
    
}

