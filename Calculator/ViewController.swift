//
//  ViewController.swift
//  Calculator
//
//  Created by Matt Dias on 1/17/19.
//  Copyright © 2019 Matt Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var resultLabel: UILabel!

    var result = 0
    var math = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func oneTapped(_ sender: Any) {
        resultLabel.text = "1"
    }

    @IBAction func plusTapped(_ sender: Any) {
        let labelText = resultLabel.text
        let num = Int(labelText!)
        
        result += num!

        resultLabel.text = "\(result)"
    }

}

