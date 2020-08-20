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
        taskZero()
        taskOne()
        taskTwo()
        taskThree()
        taskFour()
        
    }
    
    func taskZero() {
        print("--------------------")
        print("task 0")
        
        let randomNumA = Int.random(in: 1...100)
        let randomNumB = Int.random(in: 1...100)
        
        if randomNumA > randomNumB {
            print("\(randomNumA) is more than \(randomNumB)")
        } else {
            print("\(randomNumB) is more than \(randomNumA)")
        }
    }
    
    func taskOne() {
        print("--------------------")
        print("task 1")
        
        var number2 = 3
        number2 = number2 * number2
        print("квадрат из числа 3 будет \(number2)")
        
        var number3 = 4
        number3 = number3 * number3 * number3
        print("куб из числа 4 будет \(number3)")
    }
    
    func taskTwo() {
        print("--------------------")
        print("Task 2")
        print("Возрастание")
        var numUp = 0
        for _ in 0...10 {
            numUp += 1
            print(numUp)
        }
        
        print("Спадание")
        var num = 10
        for _ in 1...num {
            num -= 1
            print(num)
        }
    }
    
    func taskThree() {
        print("--------------------")
        print("task 3")
        let checkNum = 21
        for num in 1...checkNum {
            if checkNum % num == 0 {
                print(num)
            }
        }
    }
    
    func taskFour() {
        print("--------------------")
        print("Task 4")
        let checkNum = 10000
        for num in 1...checkNum {
            var sumDev = 0
            for num1 in 1...num {
                if num % num1 == 0 {
                    sumDev += num1
                    if sumDev == num {
                        print(num)
                    }
                }
            }
        }
    }
}

