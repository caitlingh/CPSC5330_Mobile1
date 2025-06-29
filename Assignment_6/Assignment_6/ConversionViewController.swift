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
    
    // user input
    var usd : Int = 0
    
    // display currency conversions
    var showEUR = false
    var showJPY = false
    var showGBP = false
    var showCAD = false
    
    // currency exchange rates
    var eurRate : Double = 0.85
    var jpyRate : Double = 145.00
    var gbpRate : Double = 0.74
    var cadRate : Double = 1.37
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmountLabel.text = "$\(usd)"
        
        if showEUR {
            let eur = Double(usd) * eurRate
            eurAmountLabel.text = "€\(String(format: "%.2f", eur))"
        } else {
            eurLabel.isHidden = true
            eurAmountLabel.isHidden = true
        }
        
        if showJPY {
            let jpy = Double(usd) * jpyRate
            jpyAmountLabel.text = "¥\(String(format: "%.2f", jpy))"
        } else {
            jpyLabel.isHidden = true
            jpyAmountLabel.isHidden = true
        }
        
        if showGBP {
            let gbp = Double(usd) * gbpRate
            gbpAmountLabel.text = "£\(String(format: "%.2f", gbp))"
        } else {
            gbpLabel.isHidden = true
            gbpAmountLabel.isHidden = true
        }
        
        if showCAD {
            let cad = Double(usd) * cadRate
            cadAmountLabel.text = "C$\(String(format: "%.2f", cad))"
        } else {
            cadLabel.isHidden = true
            eurAmountLabel.isHidden = true
        }
        

        // Do any additional setup after loading the view.
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
