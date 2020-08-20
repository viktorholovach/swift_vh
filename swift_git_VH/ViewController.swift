//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L555H" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        
        times()
        
    }
    
    func times() {
        while frontIsClear {
            fillRow()
            if frontIsBlocked && leftIsBlocked && rightIsBlocked {
                break
            }
            uTurn(condition: frontIsBlocked && facingRight)
            emptyRow()
            if frontIsBlocked && leftIsBlocked {
                break
            }
            uTurn(condition: frontIsBlocked && facingRight)
            
        }
    }
    
    
    func fillRow() {
        while frontIsClear {
            put()
            move()
            if frontIsBlocked {
                put()
            }
        }
    }
    
    func emptyRow() {
        while frontIsClear {
            move()
        }
    }
    
    func uTurn(condition: Bool) {
        condition ? turnRight() : turnLeft()
        if frontIsClear {
            move()
        }
        condition ? turnRight() : turnLeft()
    }
    
    
    
    
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
}

