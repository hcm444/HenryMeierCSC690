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
    var Player = 1
    var ActiveState = true //check if game is running
    @IBAction func action(_ sender: AnyObject) //AnyObject swift update
    {
        if (GameBoard[sender.tag-1] == 0 && ActiveState == true) //check if game is "running"
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
        for combination in Combo //win condition checker
        {
            if GameBoard[combination[0]] != 0 
            && GameBoard[combination[0]] == GameBoard[combination[1]] 
            && GameBoard[combination[1]] == GameBoard[combination[2]]//win conditions
            {
                ActiveState = false
                if GameBoard[combination[0]] == 1
                {
                    print ("X HAS WON!")//x wins
                    //currently outputs to console
                }
                else
                {
                    print ("O HAS WON!")//o wins
                    //currently outputs to console
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



