//
//  Player.swift
//  boxme
//
//  Created by Yuhan Liu on 7/27/16.
//  Copyright © 2016 Yuhan Liu. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    
    var health: Int
    
    var KOed: Bool {
        get {return health <= 0}
    }
    
    init(name: String) {
        self.name = name;
        self.health = 100;
    }
    
    func takeDamage(amount: Int) {
        health -= amount
    }
    
}