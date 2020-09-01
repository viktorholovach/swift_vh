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
        
        
       nameShift()
        secondVersion()
    }
    
    
    func nameShift() {
        let name = "OliverKing"
        var splitName = name
        var indexCapital: [Int] = []
        for (index, element) in name.enumerated() {
            if element.isUppercase {
                indexCapital.append(index)
            }
        }
        
        let indexToSplit: Int = indexCapital.last!
        
        splitName.insert(" ", at: splitName.index(splitName.startIndex, offsetBy: indexToSplit))
        
        let nameOnly = name.prefix(indexToSplit)
        let startfathersName = name.index(name.startIndex, offsetBy: indexToSplit)
        let finnishFathersName = name.endIndex
        let fathersName = startfathersName..<finnishFathersName
        let myString = name[fathersName]
        
        
        
        print(splitName)
        print(nameOnly)
        print(myString)
        
        
        
    }
    
    func secondVersion() {
        let name = "ViktorHolovach"
        var fullName = ""
        var nameOnly = ""
        var fathersName = ""
        for char in name {
            if char.isUppercase {
                fullName += " " + String(char)
                fathersName = String(char)
                nameOnly += String(char)
            }
            if char.isLowercase {
                fullName += String(char)
                fathersName += String(char)
            }
        }
        
        fullName.remove(at: fullName.startIndex)
        print(fullName)
        print(fathersName)
        print("\(nameOnly) cant pull name =( ")
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}































