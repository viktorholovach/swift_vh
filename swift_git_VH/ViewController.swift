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
        
        badWords()
        anotherWay()
    }
    
    func badWords() {
        let input = "My pick is great, my pick is very great"
        let wordsToChange = ["pick", "great", "is"]
        let arrayInput = input.replacingOccurrences(of: ",", with: " ,").replacingOccurrences(of: ".", with: " . ").replacingOccurrences(of: "\n", with: " \n ").components(separatedBy: " ")
        var arrayInputWithStars : [String] = []
        for word in arrayInput {
            if wordsToChange.contains(word) {
                var stars = ""
                for _ in 0..<(word.count) {
                    stars.append("*")
                }
                arrayInputWithStars.append(stars)
            }
            else {
                arrayInputWithStars.append(word)
            }
        }
        let stringOutputWithStars = arrayInputWithStars.joined(separator: " ").replacingOccurrences(of: " ,", with: ",").replacingOccurrences(of: " . ", with: ".").replacingOccurrences(of: " \n ", with: "\n")
        print(stringOutputWithStars)
        
    }
    
    
    func anotherWay() {
     //hardcode 
       let input = "My pick is great, my pick is very great"
        let filterWords = ["pick", "great", "is"]
        var firstBadWordStars = ""
        var stars = ""
        var outputWithStars = ""
        
        for x in 0..<filterWords.count {
            if x == 0 && input.contains(filterWords[x]) {
                for _ in 0..<filterWords[x].count {
                    stars += "*"
                    firstBadWordStars = input.replacingOccurrences(of: filterWords[x], with: stars)
                }
                stars = ""
            }
            if x == 1 && firstBadWordStars.contains(filterWords[x]) {
                for _ in 0..<filterWords[x].count {
                    stars += "*"
                    outputWithStars = firstBadWordStars.replacingOccurrences(of: filterWords[x], with: stars)
                    
                }
            }
        }
        
        print(outputWithStars)
    }
}



































