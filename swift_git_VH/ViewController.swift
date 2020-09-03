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
        
        
        sorted()
     
    }
    
    func sorted() {
        
    let givenNum = Array(Set(arrayLiteral: 9, 1, 2, 5, 1, 7))
        var sortedNum = givenNum
        for i in 0..<sortedNum.count {
            var element = i
            while element > 0 && sortedNum[element] < sortedNum[element - 1] {
                sortedNum.swapAt(element - 1, element)
                      element -= 1
            }
        }
        print(sortedNum)
    }
    
    
    
    }


























