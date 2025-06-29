//
//  ViewController.swift
//  Assignment_6
//
//  Created by Caitlin Hendricks on 6/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var usdInput: UITextField!
    
    // user input
    var usd : Int = 0
    
    // switch toggles
    var eurSwitch = true
    var jpySwitch = true
    var gbpSwitch = true
    var cadSwitch = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errorMessage.isHidden = true
    }

    @IBAction func calculate(_ sender: UIButton) {
        if let text = usdInput.text, let value = Int(text) {
            usd = value
            errorMessage.isHidden = true
            self.performSegue(withIdentifier: "toConversion", sender: self)
        } else {
            errorMessage.isHidden = false
        }
    }
    
    @IBAction func euro(_ sender: UISwitch) {
        if sender.isOn {
            eurSwitch = true
        } else {
            eurSwitch = false
        }
    }
    
    @IBAction func yen(_ sender: UISwitch) {
        if sender.isOn {
            jpySwitch = true
        } else {
            jpySwitch = false
        }
    }
    
    @IBAction func pound(_ sender: UISwitch) {
        if sender.isOn {
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
    }
    
    @IBAction func canadian(_ sender: UISwitch) {
        if sender.isOn {
            cadSwitch = true
        } else {
            cadSwitch = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConversion",
               let calculation = segue.destination as? ConversionViewController {
                calculation.usd = usd
                calculation.showEUR = eurSwitch
                calculation.showJPY = jpySwitch
                calculation.showGBP = gbpSwitch
                calculation.showCAD = cadSwitch
            }
    }
    
}

