//
//  ViewController.swift
//  Dicee
//
//  Created by Innovation Lab on 10/12/17.
//  Copyright © 2017 Innovation Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomIndex1 : Int = 0
    var randomIndex2 : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage (named: diceArray[randomIndex1])
        diceImageView2.image = UIImage (named: diceArray[randomIndex2])
    }
    
}

