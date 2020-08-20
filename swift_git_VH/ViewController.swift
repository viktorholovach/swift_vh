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
        levelName = "L55H" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        
        
        buildPyramid(row: 8)
    }
    
    func buildPyramid(row: Int) {
        for i in 0...row {
            putCandy(count: i)
            uTurn()
        }
    }
    
    func putCandy(count: Int) {
        for _ in 0...count {
            put()
            move()
        }
    }
    
    func uTurn() {
        turnRight()
        turnRight()
        while frontIsClear {
            move()
            if frontIsBlocked {
                turnLeft()
                move()
                turnLeft()
                break
            }
        }
    }
    
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
}

