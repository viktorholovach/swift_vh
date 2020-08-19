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
        
        var name = "Viktor"
        var checkChars = 0
        for _ in name {
            checkChars += 1
        }
        
        print("Name \(name) have \(checkChars) characters")
        // or:
        print("Viktor have \(name.count) chars  ")
    }
}

