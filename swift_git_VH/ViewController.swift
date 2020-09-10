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
        
        array()
        
    }
    
    func array() {
        let unsortedArray = [9, 1, 2, 5, 1, 7]
        let noDuplicates = Array(Set(unsortedArray))
        var sortedArray = noDuplicates
        print(sortedArray)
        for x in 1..<sortedArray.count {
            var y = x
            while y > 0 && sortedArray[y] < sortedArray[y - 1] {
                sortedArray.swapAt(y - 1, y)
                y -= 1
            }
        }
        print(sortedArray)
    }
    
    
    
    
    
    
}

























