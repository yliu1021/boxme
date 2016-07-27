//
//  PlayerTest.swift
//  boxme
//
//  Created by Yuhan Liu on 7/27/16.
//  Copyright © 2016 Yuhan Liu. All rights reserved.
//

import XCTest

class PlayerTest: XCTest {
    
    let playerName = "Name1"
    
    func testName() {
        let player = Player(name: playerName)
        XCTAssert(player.name == playerName)
    }
    
    func testInitialHealth() {
        let player = Player(name: playerName)
        XCTAssert(player.health == 100)
    }
    
    func testDamage() {
        let player = Player(name: playerName)
        let damage = 10
        player.takeDamage(damage)
        XCTAssert(player.health == 100 - damage)
    }

    func testKO() {
        let player = Player(name: playerName)
        let damage = 140
        player.takeDamage(damage)
        XCTAssert(player.KOed)
    }
    
}
