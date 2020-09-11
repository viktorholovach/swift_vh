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
        
        transliteWord(input: "Лиииииза")
        
    }
    
    func transliteWord(input: String)  {
        
        let dictionary = [
            "В": "V",
            "т": "t",
            "Л": "L",
            "и": "i",
            "з": "z",
            "а": "a",
            "о": "o",
            "р": "r",
            "к": "k"
        ]
        var transliteWord = ""
        
        for char in input {
            for (key, element) in dictionary {
                if key == String(char) {
                    transliteWord.append(element)
                }
            }
        }
        
        print(transliteWord)
    }
    
    
    
    
    
    
}

























