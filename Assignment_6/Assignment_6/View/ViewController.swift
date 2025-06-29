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
    
    var conversionLogic = ConversionLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errorMessage.isHidden = true
    }

    @IBAction func calculate(_ sender: UIButton) {
        if conversionLogic.getUSD(input: usdInput.text) {
            errorMessage.isHidden = true
            self.performSegue(withIdentifier: "toConversion", sender: self)
        } else {
            errorMessage.isHidden = false
        }
    }
    
    @IBAction func euro(_ sender: UISwitch) {
        conversionLogic.setEURSwitch(sender.isOn)
    }
    
    @IBAction func yen(_ sender: UISwitch) {
        conversionLogic.setJPYSwitch(sender.isOn)
    }
    
    @IBAction func pound(_ sender: UISwitch) {
        conversionLogic.setGBPSwitch(sender.isOn)
    }
    
    @IBAction func canadian(_ sender: UISwitch) {
        conversionLogic.setCADSwitch(sender.isOn)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConversion",
           let destination = segue.destination as? ConversionViewController {
            destination.conversionLogic = conversionLogic
        }
    }
    
}

