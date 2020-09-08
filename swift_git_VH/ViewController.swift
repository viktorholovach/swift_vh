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
        
        password(password: "Qwerty1234!@#$%^&*(")
    }
    
    func password(password: String) {
        
        var passwordGrade = 0
        var numInPassword = false
        var upperCaseInPassword = false
        var lowerCaseInPassword = false
        var symbolInPassword = false
        for char in password {
            if !numInPassword && char.isNumber {
                passwordGrade += 1
                numInPassword = true
            }
            if !upperCaseInPassword && char.isUppercase {
                passwordGrade += 1
                upperCaseInPassword = true
            }
            if !lowerCaseInPassword && char.isLowercase {
                passwordGrade += 1
                lowerCaseInPassword = true
            }
            if !symbolInPassword && char.isSymbol {
                passwordGrade += 1
                symbolInPassword = true
            }
            
        }
        print(passwordGrade)
    }
    
    
    
    
    
    
    
    
    
}



