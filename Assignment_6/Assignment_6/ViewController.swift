//
//  ViewController.swift
//  Assignment_6
//
//  Created by Caitlin Hendricks on 6/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errorMessage.isHidden = true
    }

    @IBAction func calculate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toConversion", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
//        if segue.identifier == "toConversion" {
//            let calculation = segue.destination
//        }
    }
    
}

