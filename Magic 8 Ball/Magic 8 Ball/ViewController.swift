//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Evans Yeung on 9/3/19.
//  Copyright © 2019 Evans Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eightBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomEightBallIndex: Int = 0
    
    @IBOutlet weak var eightBallView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateEightBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        updateEightBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateEightBallImage()
    }
    
    func updateEightBallImage() {
        randomEightBallIndex = Int.random(in: 0 ... 4)
        eightBallView.image = UIImage.init(named: eightBallArray[randomEightBallIndex])
    }
    
}

