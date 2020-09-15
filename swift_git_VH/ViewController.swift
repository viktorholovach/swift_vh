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
        
        foo(array: [1, 3, 10, 92, 100, 6, 88])
    }
    
    func array() {
        let unsortedArray = [9, 1, 2, 5, 1, 7]
        let noDuplicates = Array(Set(unsortedArray))
        var sortedArray = noDuplicates
        print(sortedArray)
        for i in 0..<sortedArray.count {
            for j in 1..<sortedArray.count - i {
                if sortedArray[j] < sortedArray[j - 1] {
                    sortedArray.swapAt(j, j - 1)
                }
            }
        }
        
        print(sortedArray)
        
    }

    func foo(array: [Int]) {
        var array = array
        for i in 0..<array.count {
            for j in 1..<array.count - i {
                if array[j] < array[j - 1] {
                    array.swapAt(j, j - 1)
                }
            }
        }
        print(array)
    }
}
