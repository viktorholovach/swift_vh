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
        
        
        password()
        
    }
    
    func password() {
        
        let password = "q$"
        var special = "+_)(*&^%$#@!"
        var passwordNum = 0
        var passwordNumberChar = ""
        var passwordUpperNum = 0
        var passwordNumberUpperChar = ""
        var passwordLowerNum = 0
        var passwordNumberLowerChar = ""
        var specialNum = 0
        var specialChar = ""
        var passwordCheckGrade = ""
        var passwordCheckNum = 0
        
        for char in password {
            if char.isNumber {
                passwordNum = 1
                passwordNumberChar = " " + "a)"
            }
        }
        for char in password {
            if char.isUppercase {
                passwordUpperNum = 1
                passwordNumberUpperChar = " " + "b)"
            }
        }
        for char in password {
            if char.isLowercase {
                passwordLowerNum = 1
                passwordNumberLowerChar = " " + "c)"
            }
        }
        for char in special {
            if password.contains(char) {
                specialNum = 1
                specialChar = " " + "d)"
            }
        }
        passwordCheckNum = passwordNum + passwordUpperNum + passwordLowerNum + specialNum
        passwordCheckGrade = passwordNumberChar + passwordNumberUpperChar +
            passwordNumberLowerChar + specialChar
        let passwordGradeAndNum = String(passwordCheckNum) + passwordCheckGrade
        print(passwordGradeAndNum)
    
    }
    
    
    
    }


























