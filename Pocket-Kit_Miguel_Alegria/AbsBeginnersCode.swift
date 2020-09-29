//
//  AbsBeginnersCode.swift
//  Pocket-Kit_Miguel_Alegria
//
//  Created by Miguel Pedraza on 27/04/19.
//  Copyright © 2019 APApps. All rights reserved.
//

import UIKit

class AbsBeginnersCode: UIViewController {

    @IBOutlet weak var imgGif1: UIImageView!
    @IBOutlet weak var imgGif2: UIImageView!
    @IBOutlet weak var imgGif3: UIImageView!
    @IBOutlet weak var imgGif4: UIImageView!
    @IBOutlet weak var imgGif5: UIImageView!
    @IBOutlet weak var imgGif6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgGif1.loadGif(name: "saltoDeTijera")
        imgGif2.loadGif(name: "crunchAbs")
        imgGif3.loadGif(name: "mountainClimber")
        imgGif4.loadGif(name: "legElevation")
        imgGif5.loadGif(name: "touchHeels")
        imgGif6.loadGif(name: "twistAbs")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
