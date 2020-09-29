//
//  BMICode.swift
//  Pocket-Kit_Miguel_Alegria
//
//  Created by Miguel Pedraza on 14/03/19.
//  Copyright © 2019 APApps. All rights reserved.
//
import UIKit

var BMIDouble = 0.0

class BMICode: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var segMenWomen: UISegmentedControl!
    @IBOutlet weak var lblBMI: UILabel!
    @IBOutlet weak var lblCorporal: UILabel!
    @IBOutlet weak var btnCalculateOut: UIButton!
    @IBOutlet weak var btnClearOut: UIButton!
    @IBOutlet weak var diabetesSwitch: UISwitch!
    
    var height = 0.0
    var weight = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblBMI.layer.cornerRadius = lblBMI.bounds.size.height / 2
        lblCorporal.layer.cornerRadius = lblCorporal.bounds.size.height / 2
        btnCalculateOut.layer.cornerRadius = btnCalculateOut.bounds.size.height / 2
        btnClearOut.layer.cornerRadius = btnClearOut.bounds.size.height / 2
        
    }
    @IBAction func tapBar(_ sender: Any) {
        txtName.resignFirstResponder()
        txtHeight.resignFirstResponder()
        txtWeight.resignFirstResponder()
    }
    
    @IBAction func btnCalculate(_ sender: Any) {
        weight = Double(txtWeight.text!)!
        height = Double(txtHeight.text!)!
        let bmi = (weight / (height * height))
        let BMIFinal = String(format: "%.2f", bmi)
        
        lblBMI.text = (BMIFinal)
        
        if diabetesSwitch.isOn == true {
            lblCorporal.text = "If you have diabetes you should get in touch with your doctor for a safer routine, we recommend you to try at least walking 30 minutes a day."
        }
        else {
            if segMenWomen.selectedSegmentIndex == 0 {
                if bmi <= 20.9 {
                    lblCorporal.text = "\(txtName.text!) your weight is lower than normal."
                }
                else if bmi >= 21 && bmi <= 24.9 {
                    lblCorporal.text = "\(txtName.text!) your weight is normal."
                }
                else if bmi >= 25 && bmi <= 29.9 {
                    lblCorporal.text = "\(txtName.text!) you have overweight."
                }
                else if bmi >= 30 && bmi <= 39.9 {
                    lblCorporal.text = "\(txtName.text!) you have obesity."
                }
                else {
                    lblCorporal.text = "\(txtName.text!) you have severe obesity."
                }
            }
            else if segMenWomen.selectedSegmentIndex == 1 {
                if bmi <= 18.9 {
                    lblCorporal.text = "\(txtName.text!) your weight is lower than normal."
                }
                else if bmi >= 19 && bmi <= 24.9 {
                    lblCorporal.text = "\(txtName.text!) your weight is normal."
                }
                else if bmi >= 25 && bmi <= 26.9 {
                    lblCorporal.text = "\(txtName.text!) you have overweight."
                }
                else if bmi >= 27 && bmi <= 39.9 {
                    lblCorporal.text = "\(txtName.text!) you have obesity."
                }
                else {
                    lblCorporal.text = "\(txtName.text!) you have severe obesity."
                }
            }
        }
        
        btnCalculateOut.isEnabled = false
        BMIDouble = Double(BMIFinal)!
        
    }
        
    
    @IBAction func btnClearA(_ sender: Any) {
        txtName.text = ""
        txtHeight.text = ""
        txtWeight.text = ""
        lblBMI.text = "BMI"
        lblCorporal.text = "Corporal Composition"
        btnCalculateOut.isEnabled = true
        BMIDouble = 0.0
    }

}
