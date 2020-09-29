//
//  BurnsCode.swift
//  Pocket-Kit_Miguel_Alegria
//
//  Created by Miguel Pedraza on 06/04/19.
//  Copyright © 2019 APApps. All rights reserved.
//

import UIKit

class BurnsCode: UIViewController {

    @IBOutlet weak var btnOut: UIButton!
    @IBOutlet weak var btnOut2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnOut.layer.cornerRadius = btnOut.bounds.size.height / 2
        btnOut2.layer.cornerRadius = btnOut2.bounds.size.height / 2
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        guard let numberString = sender.titleLabel?.text, let url = URL(string: "telprompt://\(numberString)")
            else {
                return
        }
        UIApplication.shared.open(url)
    }
    
    @IBAction func btnChronomeer(_ sender: UIButton) {
    }
    
}
