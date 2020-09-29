//
//  FirstAidCode.swift
//  Pocket-Kit_Miguel_Alegria
//
//  Created by Miguel Pedraza on 05/04/19.
//  Copyright © 2019 APApps. All rights reserved.
//

import UIKit

class FirstAidCode: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn1.layer.cornerRadius = btn1.bounds.size.height / 2
        btn2.layer.cornerRadius = btn2.bounds.size.height / 2
        btn3.layer.cornerRadius = btn3.bounds.size.height / 2
        btn4.layer.cornerRadius = btn4.bounds.size.height / 2
    }

}
