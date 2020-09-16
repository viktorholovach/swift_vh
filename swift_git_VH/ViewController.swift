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
       
  nameCheck()
    }
  
    
    func nameCheck() {
    var name = "SteveJobs"
            var capitalIndex: [Int] = []
            for (index, char) in name.enumerated() {
                if char.isUppercase {
                    capitalIndex.append(index)
                }
            }
            let indexToSplit = capitalIndex.last!

            let nameOnly = name.prefix(indexToSplit)
            print(nameOnly)
        let startFathersNameIndex = name.index(name.startIndex, offsetBy:indexToSplit)
        let endFathersNameIndex = name.endIndex
        let rangeFathersNameIndex = startFathersNameIndex..<endFathersNameIndex
        let fathersName = name[rangeFathersNameIndex]
            print(fathersName)
            name.insert(" ", at: name.index(name.startIndex, offsetBy: indexToSplit))
            print(name)
        }

    
    
    
    
    
    
    
    

}

