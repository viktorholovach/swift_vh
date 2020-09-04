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
        taskOne()
        taskTwo()
        taskThree()
        taskFour()
       
    }
    func taskOne() {
        print("--------------------")
        print("task 1")
        
        let cash = 24
        let percent = 0.06
        let fromYear = 1826
        let toYear = 2020
        let amountOfYears = toYear - fromYear
        var moneyAfterDeposit = 0
        print("\(amountOfYears) - years in bank")
        
        //fromula to count = moneyAfterDeposit = cash * (1 + percent) возвести в стпенеь 194
        // Формула сложного процента с ежигодным начислением
        
        let onePlusPercent = 1 + percent
        print("\(onePlusPercent) - first step in fromula")
        var partOfFormula = 1.0
        
        for _ in 1...amountOfYears {
            partOfFormula *= onePlusPercent
        }
        print("\(partOfFormula) = проценты возведенные в \(amountOfYears)")
        
        // or we can use b = pow(a, 194)
        
        moneyAfterDeposit = Int(Double(cash) * partOfFormula)
        print("with 24$ after 194 under 12% yearly you will get \(moneyAfterDeposit)$ ")
    }
    
    func taskTwo() {
        print("--------------------")
        print("task 2")
        
        let grants = 700.0
        let expenses = 1000.0
        let percent = 0.03
        let mounth = 10
        var moneyNeeded = 0
        
        //fromula to count = expensesWithPercents = expenses * (1 + percent)
        // Формула сложного процента с ежимесячным начислением
        
        let onePlusPercent = 1 + percent
        print("\(onePlusPercent) - first step in fromula")
        
        var expensesforTenMounth = expenses * onePlusPercent
        
        for _ in 1...9 {
            expensesforTenMounth = onePlusPercent * (expensesforTenMounth + expenses)
        }
        print("\(expensesforTenMounth)UAH - expensen for 10 mounth")
        
        var grantsForTenMounth = 0.0
        for _ in 1...10 {
            grantsForTenMounth += grants
        }
        print("\(grantsForTenMounth)UAH - grants for 10 mounth")
        
        moneyNeeded = Int(expensesforTenMounth - grantsForTenMounth)
        
        print("\(moneyNeeded)UAH - money needed for 10 mounth considering expenses and grants")
    }
    
    func taskThree() {
        
        print("--------------------")
        print("task 3")
        var savings = 2400.0
        let grants = 700.0
        var expenses = 1000.0
        let percentPerMonth = 0.03
        var mounthToLive = 0
        
        while savings > expenses {
            savings = savings - expenses + grants
            expenses = percentPerMonth * expenses + expenses
            mounthToLive += 1
        }
        print("\(mounthToLive) month to live with savings and grants")
        
    }
    
    func taskFour() {
        print("--------------------")
        print("task 4")
        var checkNumber = 3456
        var num = 0
        var digit = 0
        
        while checkNumber > 0 {
            digit = checkNumber % 10
            print(digit)
            checkNumber = checkNumber / 10
            print(checkNumber)
            num = num * 10
            print(num)
            num = num + digit
        }
        print(num)
        
       
        }
    
}
