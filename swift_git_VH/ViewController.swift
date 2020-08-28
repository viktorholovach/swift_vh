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
        
        
        reverseString()
        
        
        
        
    }
    
    
    func reverseString() {
        let str = "Mountains"
        var reversedStr = ""
        for char in str {
            reversedStr = "\(char)" + reversedStr
        }
        print(reversedStr)
        
        
        
        
        
    }
}






























