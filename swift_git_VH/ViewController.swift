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
        
        checkNumber()
        squareAndCube()
        UpDownCount()
        deviders()
        perfectNumber()
        
    }
    func checkNumber() {
        let randomNumberX = Int.random(in: 1...100)
        let randomNumberY = Int.random(in: 1...100)
        
        if randomNumberX > randomNumberY {
            print("number \(randomNumberX) bigger then \(randomNumberY)")
        } else {
            print("number \(randomNumberY) bigger then \(randomNumberX)")
        }
    }
    
    
    func squareAndCube() {
        let number = 3
        let squareNum = number * number
        let cubeNum = squareNum * number
        print("square number \(squareNum)")
        print("cube number \(cubeNum)")
        
    }
    func UpDownCount() {
        print("numbers down count")
        var numDown = 10
        while numDown != 1 {
            numDown -= 1
            print(numDown)
        }
        
        print("numbers up count")
        var numUp = 0
        while numUp != 10 {
            numUp += 1
            print(numUp)
        }
    }
    
    func deviders() {
        let numbers = 28
        for num in 1...numbers {
            if numbers % num == 0 {
                print("\(num) is devider")
            }
        }
    }
    
    func perfectNumber() {
        let number = 10000
        for num in 1...number {
            var summOfDeviders = 0
            for num1 in 1...num {
                if num % num1 == 0 {
                    summOfDeviders += num1
                    if summOfDeviders == num {
                        print(num)
                    }
                }
            }
        }
    }
        
    

}
