//
//  ViewController.swift
//  Calculator
//
//  Created by Alejandro Garcia on 1/17/19.
//  Copyright © 2019 Alejandro Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var result = 0
    
    var math = 0
    
    var operation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
//    @IBAction func oneTapped(_ sender: Any) {
//        resultLabel.text = "1"
////        math = 1 + math
//    }
    
//    @IBAction func plusTapped(_ sender: Any) {
////        let labelText =
//
//        result += math
//
//        resultLabel.text = "\(result)"
//
//        math = 0
////        resultLabel.text = "result"
//    }
//
//    @IBAction func minustapped(_ sender: Any) {
//        result -= math
//
//        resultLabel.text = "\(result)"
//
//        math = 0
//    }
    
    @IBAction func resultTapped(_ sender: Any) {
        
        if (operation == "plus") {
            result += math
        }
        if (operation == "minus") {
            result -= math
        }

        
        resultLabel.text = "\(result)"
        
        math = 0
    }
    
    @IBAction func operation(_ sender: UIButton) {
        
        if (sender.titleLabel!.text! == "+") {
            operation = "plus"
            result += math
            
        }
        if (sender.titleLabel!.text! == "-") {
            operation = "minus"
            result -= math
            
        }
        
        resultLabel.text = "\(result)"
        
        math = 0
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        math = Int(sender.titleLabel!.text!)!
        
        resultLabel.text = "\(math)"
//        print(math)
    }
}

