//
//  ConversionViewController 2.swift
//  Assignment_6
//
//  Created by Caitlin Hendricks on 6/28/25.
//


import UIKit

class ConversionViewController: UIViewController {

    @IBOutlet weak var usdAmountLabel: UILabel!
    
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var eurAmountLabel: UILabel!
    @IBOutlet weak var jpyAmountLabel: UILabel!
    @IBOutlet weak var gbpAmountLabel: UILabel!
    @IBOutlet weak var cadAmountLabel: UILabel!
    
    var conversionLogic = ConversionLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmountLabel.text = "$\(conversionLogic.usd)"
        
        if let eur = conversionLogic.eur {
            eurAmountLabel.text = "€\(String(format: "%.2f", eur))"
        } else {
            eurLabel.isHidden = true
            eurAmountLabel.isHidden = true
        }
        
        if let jpy = conversionLogic.jpy {
            jpyAmountLabel.text = "¥\(String(format: "%.2f", jpy))"
        } else {
            jpyLabel.isHidden = true
            jpyAmountLabel.isHidden = true
        }
        
        if let gbp = conversionLogic.gbp {
            gbpAmountLabel.text = "£\(String(format: "%.2f", gbp))"
        } else {
            gbpLabel.isHidden = true
            gbpAmountLabel.isHidden = true
        }
        
        if let cad = conversionLogic.cad {
            cadAmountLabel.text = "C$\(String(format: "%.2f", cad))"
        } else {
            cadLabel.isHidden = true
            cadAmountLabel.isHidden = true
        }
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
