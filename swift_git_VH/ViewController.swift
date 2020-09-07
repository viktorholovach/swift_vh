//
//  ViewController.swift
//  swift_git_VH
//
//  Created by Viktor Golovach on 19.08.2020.
//  Copyright © 2020 Viktor Golovach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        thousandsSeparator()
    }
    
    
    func thousandsSeparator() {
        let numbers = "1234567"
        let reversedNumber = numbers.reversed()
        var numberWithThousandSeparator = ""
        var count = 0
        for num in reversedNumber {
            numberWithThousandSeparator += String(num)
            count += 1
            if count == 3 {
                numberWithThousandSeparator.append(",")
                count = 0
            }
        }
        print(String(numberWithThousandSeparator.reversed()))
        
    }
    
}



