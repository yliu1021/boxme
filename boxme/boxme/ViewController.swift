//
//  ViewController.swift
//  boxme
//
//  Created by Yuhan Liu on 7/27/16.
//  Copyright © 2016 Yuhan Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PlayerDelegate {

    var playerUI: PlayerUI!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func playerTookDamage(player: Player, damage: Int, newHealth: Int) {
        
    }
    
    func playerKOed(player: Player) {
        
    }

}

