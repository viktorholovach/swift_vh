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
        
        nameOnly()
        surnameOnly()
        space()
        
    }
    func nameOnly() {
        var name = "ViktorHolovach"
        let range = name.index(name.endIndex, offsetBy: -8)..<name.endIndex
        name.removeSubrange(range)
        print(name)
    }
    
    func surnameOnly() {
        var name = "ViktorHolovach"
        let start = name.index(name.startIndex, offsetBy: 0)
        let end = name.index(name.endIndex, offsetBy: -8)
        let range = start..<end
        name.removeSubrange(range)
        print(name)
    }
    func space() {
        var name = "ViktorHolovach"
        name.insert(" ", at: name.index(name.startIndex, offsetBy: 6))
        print(name)
    }
    
    
    
    
    
}

