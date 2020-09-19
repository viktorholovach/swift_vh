//
//  ViewController.swift
//  swift_git_VH
//
//  Created by Viktor Golovach on 19.08.2020.
//  Copyright © 2020 Viktor Golovach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myCoffeeMachine = CoffeeMachine()
    
    @IBOutlet weak var coffeeOutput: UILabel!
    
    @IBAction func makeEspresso(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.espresso()
    }
    @IBAction func makeAmericano(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.americano()
    }
    @IBAction func makeCappuccino(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.cappuccino()
    }
    @IBAction func makeLatteMacchiato(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.latteMacchiato()
    }
    
    @IBAction func toAddCoffee(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.addCoffeeBeans()
    }
    
    @IBAction func toAddWater(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.addWater()
    }
    @IBAction func toAddMilk(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.addMilk()
    }
    @IBAction func toRemoveBin(_ sender: Any) {
        coffeeOutput.text = myCoffeeMachine.removeBin()
    }
    
    
    
    
    
    
    
    
}

