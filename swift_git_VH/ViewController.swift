//
//  ViewController.swift
//  swift_git_VH
//
//  Created by Viktor Golovach on 19.08.2020.
//  Copyright © 2020 Viktor Golovach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let UICoffeeMachine = CoffeeMachine()
    @IBOutlet weak var coffeeMachineOutput: UILabel!
    
    
    @IBAction func espresso(_ sender: Any) {
        coffeeMachineOutput.text = UICoffeeMachine.espresso()
        
    }
    @IBAction func cappuccino(_ sender: Any) {
        coffeeMachineOutput.text = UICoffeeMachine.cappuccino()
    }
    @IBAction func americano(_ sender: Any) {
        coffeeMachineOutput.text = UICoffeeMachine.americano()
    }
    @IBAction func latteMacchiato(_ sender: Any) {
        coffeeMachineOutput.text = UICoffeeMachine.latteMacchiato()
    }
    @IBAction func addWater(_ sender: Any) {
        UICoffeeMachine.addWater()
        coffeeMachineOutput.text = UICoffeeMachine.addWater()
    }
    @IBAction func addMilk(_ sender: Any) {
        UICoffeeMachine.addMilk()
        coffeeMachineOutput.text = UICoffeeMachine.addMilk()
    }
    @IBAction func addCoffeeBeans(_ sender: Any) {
        UICoffeeMachine.addCoffeeBeans()
        coffeeMachineOutput.text = UICoffeeMachine.addCoffeeBeans()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

