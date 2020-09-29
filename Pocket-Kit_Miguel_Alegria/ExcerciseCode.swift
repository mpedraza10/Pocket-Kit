//
//  ExcerciseCode.swift
//  Pocket-Kit_Miguel_Alegria
//
//  Created by Miguel Pedraza on 16/03/19.
//  Copyright © 2019 APApps. All rights reserved.
//

import UIKit

class ExcerciseCode: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var lblLastBmi: UILabel!
    @IBOutlet weak var lblRecomended: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn1.layer.cornerRadius = btn1.bounds.size.height / 2
        btn2.layer.cornerRadius = btn2.bounds.size.height / 2
        btn3.layer.cornerRadius = btn3.bounds.size.height / 2
        
    }
    
    @IBAction func btnCheck(_ sender: UIButton) {
        lblLastBmi.text = String(BMIDouble)
        
        if BMIDouble <= 17.8 {
            lblRecomended.text = "We recommend you to start a better diet with a little bit of excercise, try checking out our begginer training section and diets."
        }
        else if BMIDouble >= 17.9 && BMIDouble <= 22.7 {
            lblRecomended.text = "We recommend you to keep a balanced diet and good beginner-intermediate routine, but in case you already have at least 6 months of training you can check out our advanced routines"
        }
        else if BMIDouble >= 22.8 && BMIDouble <= 24.1 {
            lblRecomended.text = "We recommend you to stop eating many carbohydrates, check out those diets, also you can see beginner-intermediate routine, but in case you already have at least 6 months of training you can check out our advanced routines"
        }
        else {
            lblRecomended.text = "We recommend you to check out our best diet and also you can see beginner routines to start step by step, over time, you can check some intermediate exercises. Never give up!"
        }
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        lblLastBmi.text = "0.0"
        lblRecomended.text = "Recommended"
    }
    
}
