//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Henry Meier on 12/08/19.
//  Copyright © 2019 Henry Meier. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    var GameBoard = [0, 0, 0, 0, 0, 0, 0, 0, 0] //array storing game, every array locatiion a place on board
    //array starts at 0, tags start at 1
    let Combo = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
    ]
    //win condition array
    var Player = 1
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    var ActiveState = true //check if game is running
    @IBAction func action(_ sender: AnyObject)
    {
        if (GameBoard[sender.tag-1] == 0 && ActiveState == true)
        {
            GameBoard[sender.tag-1] = Player //can't override game pieces
        if (Player == 1)
        {
            sender.setImage(UIImage(named: "X.png"), for: UIControl.State())
            Player = 2 //swap player
        }
        else
        {
            sender.setImage(UIImage(named: "O.png"), for: UIControl.State())
            Player = 1 //swap player
        }
    }
        for combination in Combo
        {
            if GameBoard[combination[0]] != 0
                && GameBoard[combination[0]] == GameBoard[combination[1]]
                && GameBoard[combination[1]] == GameBoard[combination[2]]//win conditions
            {
                ActiveState = false
                if GameBoard[combination[0]] == 1
                {
                    
                    print ("X HAS WON!")//x wins
                   
                    label1.text = "X wins!"
                   //not going to use optionals
                    
                    //currently outputs to console
                }
                else
                {
                   print ("O HAS WON!")//o wins
                  
                   label2.text = "O wins!"
                    //not going to use optionals
                    
                   
                    //currently outputs to console
                }
                
                
                label1.isHidden = false
                //hide button 1
                label2.isHidden = false
                //hide button 2
            }
        }
    }
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //helps clear unwanted memory 
    }

}



