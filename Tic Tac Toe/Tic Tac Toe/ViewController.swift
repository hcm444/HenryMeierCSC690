//
//  ViewController.swift
//  Tic Tac Toe
//

import UIKit
class ViewController: UIViewController {
    var Board = [0, 0, 0, 0, 0, 0, 0, 0, 0] //array storing game, every array locatiion a place on board
    //array starts at 0, tags start at 1
    let Combo = [
        [0, 1, 2],//top horizontal
        [3, 4, 5],//middle horizontal
        [6, 7, 8],//bottom horizontal
        [0, 3, 6],//left vertical
        [1, 4, 7],//center vertical
        [2, 5, 8],//right vertical
        [0, 4, 8],//diagonal 1
        [2, 4, 6]//diagonal 2
    ]
    //win condition array
    var Player = 1//Player variable
    @IBOutlet weak var label1: UILabel! //label declaration
    @IBOutlet weak var label2: UILabel!//label2 declaration
    
    var GameState = true //check if game is running
    @IBAction func action(_ sender: AnyObject)
    {
        if (Board[sender.tag-1] == 0 && GameState == true) //check state
        {
            Board[sender.tag-1] = Player //can't override game pieces
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
            if Board[combination[0]] != 0
                && Board[combination[0]] == Board[combination[1]]
                && Board[combination[1]] == Board[combination[2]]//win conditions
            {
                GameState = false
                if Board[combination[0]] == 1
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



