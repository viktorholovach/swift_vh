//
//  ViewController.swift
//  viktorholovach DZ
//
//  Created by Viktor Golovach on 10.08.2020.
//  Copyright © 2020 Viktor Golovach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        calculator()
        
    }
    
    func calculator () {
        
        let numbers = "1234567"
        let reversedNumbers = String(numbers.reversed())
        var calculatorValue = ""
        var iteration = 1
        
        for (index, elements) in reversedNumbers.enumerated() {
            
            if iteration == 3 && index != reversedNumbers.count - 1 {
                calculatorValue += String(elements) + ","
                iteration = 1
                continue
            }
            
            calculatorValue += String(elements)
            iteration += 1
        }
        let result = String(calculatorValue.reversed())
        
        print(result)
        
        
        
        
        
        
    }
    
    
}




























