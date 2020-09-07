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
        
        password(password: "Qwerty1234!@#$%")
    }
    
    
    func password(password: String) {
        var count = 0
        var passwordGradeNum = 0
        var passwordGradeLetter = ""
        for char in password {
            if count == 1 {
                continue
            }
            if char.isNumber {
                count += 1
                passwordGradeNum += 1
                passwordGradeLetter += " a)"
            }
        }
        count = 0
        for char in password {
            if count == 1 {
                continue
            }
            if char.isUppercase {
                count += 1
                passwordGradeNum += 1
                passwordGradeLetter += " b)"
            }
        }
        count = 0
        for char in password {
            if count == 1 {
                continue
            }
            if char.isLowercase {
                count += 1
                passwordGradeNum += 1
                passwordGradeLetter += " c)"
            }
        }
        count = 0
        for char in password {
            if count == 1 {
                continue
            }
            if char.isSymbol {
                count += 1
                passwordGradeNum += 1
                passwordGradeLetter += " d)"
            }
        }
        let passwordPowerd = String(passwordGradeNum) + passwordGradeLetter
        print(passwordPowerd)
    }
    
}
