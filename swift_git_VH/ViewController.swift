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
        
        reverse()
        
        
    }
    func reverse() {
        var reverse = "Ось"
        reverse.remove(at: reverse.index(reverse.startIndex, offsetBy: 2))
        reverse.insert("О", at: reverse.startIndex)
        reverse.remove(at: reverse.index(reverse.startIndex, offsetBy: 2))
        reverse.insert("с", at: reverse.startIndex)
        reverse.remove(at: reverse.index(reverse.startIndex, offsetBy: 2))
        reverse.insert("ь", at: reverse.startIndex)
        
        print(reverse)
        
        
    }
    
    
}

