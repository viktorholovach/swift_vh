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
        
        searchInArray(arrayToCheck: ["lada", "damba", "reebok", "adidas", "lalala", "lak", "Claus"], checkContains: "da", checkAnotherContains: "la")
    }
    
    func searchInArray(arrayToCheck: [String], checkContains: String, checkAnotherContains: String)  {
        
        var checkedArray = [String]()
        for element in arrayToCheck {
            if element.contains(checkContains) || element.contains(checkAnotherContains) {
                checkedArray.append(element)
            }
        }
        print(checkedArray)
    }
    
    
    
    
    
    
    
    
    
}

























