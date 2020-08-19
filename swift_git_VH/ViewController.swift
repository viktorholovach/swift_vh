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
        
       var fathersName = "Владимирович"
        if fathersName.hasSuffix("ич") {
            print("\(fathersName) have ич as two last chars" )
        }
        
        
        
        
    }
}

