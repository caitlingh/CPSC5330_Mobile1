//
//  ViewController.swift
//  Assignment_5
//
//  Created by Caitlin Hendricks on 6/19/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scenarioLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    
    var scenariologic = ScenarioLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        updateUI()
    }
    
    @IBAction func optionSelected(_ sender: UIButton) {
        if sender == option1 {
            scenariologic.setSceneIndex(to: scenariologic.getNext1())
            updateUI()
        }
        else if sender == option2 {
            if scenariologic.getOption2() == "Quit" {
                showEnd()
            }
            else {
                scenariologic.setSceneIndex(to: scenariologic.getNext2())
                updateUI()
            }
        }
    }
    
   func updateUI() {
        scenarioLabel.text = scenariologic.getNextScenario()
        setAttributedTitle(option1, text: scenariologic.getOption1())
        setAttributedTitle(option2, text: scenariologic.getOption2())
        
        // win state
        if scenariologic.getSceneIndex() == 3 || scenariologic.getSceneIndex() == 6 {
            resultLabel.text = "Success!"
            resultLabel.textColor = UIColor.green
            resultLabel.isHidden = false
        }
        // lose state
        else if scenariologic.getSceneIndex() == 4 || scenariologic.getSceneIndex() == 5 {
            resultLabel.text = "Fail!"
            resultLabel.textColor = UIColor.red
            resultLabel.isHidden = false
        }
        // resets state on restart
        else if scenariologic.getSceneIndex() == 0 {
            resultLabel.isHidden = true
        }
    }
    
    // quit state
    func showEnd() {
        scenarioLabel.text = "Thanks for adventuring!"
        option1.isHidden = true
        option2.isHidden = true
        resultLabel.isHidden = true
    }
    
    // helper to perserve button font styling
    func setAttributedTitle(_ button: UIButton, text: String) {
        let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .medium),
            .foregroundColor: UIColor.white,
            .paragraphStyle: paragraphStyle
        ]
        let attrString = NSAttributedString(string: text, attributes: attributes)
        button.setAttributedTitle(attrString, for: .normal)
    }
    
}

