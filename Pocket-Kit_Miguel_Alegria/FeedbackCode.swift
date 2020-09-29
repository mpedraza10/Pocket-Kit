//
//  FeedbackCode.swift
//  Pocket-Kit_Miguel_Alegria
//
//  Created by Miguel Pedraza on 27/04/19.
//  Copyright © 2019 APApps. All rights reserved.
//

import UIKit

class FeedbackCode: UIViewController {

    @IBOutlet weak var sliderOut: UISlider!
    @IBOutlet weak var lblNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let value = Int(sliderOut.value)
        
        lblNumber.text = String(value)
    }
    
}
