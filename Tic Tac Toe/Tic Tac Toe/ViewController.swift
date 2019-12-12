//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Henry Meier on 12/11/19.
//  Copyright © 2019 Henry Meier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1
    var gamestate = [0, 0, 0, 0, 0, 0, 0, 0, 0] //array storing game, every array locatiion a place on board
    //array starts at 0, tags start at 1
    
    @IBAction func action(_ sender: AnyObject)
    {
        if (gamestate[sender.tag-1] == 0)
        {
            gamestate[sender.tag-1] = activePlayer //can't override game pieces
        
        
        if (activePlayer == 1)
        {
            sender.setImage(UIImage(named: "Cross.png"), for: UIControl.State())
            activePlayer = 2 //swap player
        }
        else
        {
            sender.setImage(UIImage(named: "Nought.png"), for: UIControl.State())
            activePlayer = 1 //swap player
        }
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}



