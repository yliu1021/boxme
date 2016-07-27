//
//  Player.swift
//  boxme
//
//  Created by Yuhan Liu on 7/27/16.
//  Copyright © 2016 Yuhan Liu. All rights reserved.
//

import Foundation

class Player {
    
    var playerDelegate: PlayerDelegate?
    
    var name: String
    
    var health: Int
    var KOed: Bool {
        get {return health <= 0}
    }
    
    convenience init(name: String) {
        self.init(name: name, playerDelegate: nil)
    }
    
    init(name: String, playerDelegate: PlayerDelegate?) {
        self.name = name
        self.health = 100
        self.playerDelegate = playerDelegate
    }
    
    func takeDamage(amount: Int) {
        health -= amount
        playerDelegate?.playerTookDamage(self, damage: amount, newHealth: health)
        if (KOed) {
            playerDelegate?.playerKOed(self)
        }
    }
    
    func setDelegate(del: PlayerDelegate) {
        self.playerDelegate = del
    }
    
}

protocol PlayerDelegate {
    
    func playerTookDamage(player: Player, damage: Int, newHealth: Int)
    func playerKOed(player: Player)
    
}