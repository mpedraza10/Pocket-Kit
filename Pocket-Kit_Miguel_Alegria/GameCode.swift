//
//  GameCode.swift
//  Pocket-Kit_Miguel_Alegria
//
//  Created by Miguel Pedraza on 29/04/19.
//  Copyright © 2019 APApps. All rights reserved.
//

import UIKit

class GameCode: UIViewController {

    @IBOutlet weak var stepperOut: UIStepper!
    @IBOutlet weak var imgDiceRoll: UIImageView!
    @IBOutlet weak var imgDice: UIImageView!
    
    var images = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        if stepperOut.value == 1 {
            imgDice.image = #imageLiteral(resourceName: "1")
        }
        else if stepperOut.value == 2 {
            imgDice.image = #imageLiteral(resourceName: "2")
        }
        else if stepperOut.value == 3 {
            imgDice.image = #imageLiteral(resourceName: "3")
        }
        else if stepperOut.value == 4 {
            imgDice.image = #imageLiteral(resourceName: "4")
        }
        else if stepperOut.value == 5 {
            imgDice.image = #imageLiteral(resourceName: "5")
        }
        else {
            imgDice.image = #imageLiteral(resourceName: "6")
        }
        // In this conditions we state how is the stepper going to work, stating that if the value of the stepper is equal to one then the dice's face is going to be the 1 and so on
        
        stepperOut.maximumValue = 6
        stepperOut.minimumValue = 1
        // Here we declare that if the stepper's minimum value is equal to 1 then it can't go any further back and if the stepper is 6 it can't go any longer, this in order not to ac
    }
    @IBAction func btnRoll(_ sender: UIButton) {
        let dice = Int(stepperOut.value)
        let randomDice = Int.random(in: 0...5)
        var sum = randomDice + dice
        // Here we declare the value of the stepper as an integer, and declare the sum
        
        imgDiceRoll.image = images[randomDice]
        
        if randomDice == 0 {
            sum = dice + 1
        }
        else if randomDice == 1 {
            sum = dice + 2
        }
        else if randomDice == 2 {
            sum = dice + 3
        }
        else if randomDice == 3 {
            sum = dice + 4
        }
        else if randomDice == 4 {
            sum = dice + 5
        }
        else {
            sum = dice + 6
        }
        // In this conditions we make sure that the index of the array has the numer of faces of the dice this in order to make it able to sum with the stepper
        }
    

}
