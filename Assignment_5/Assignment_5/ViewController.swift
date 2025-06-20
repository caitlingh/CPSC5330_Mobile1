//
//  ViewController.swift
//  Assignment_5
//
//  Created by Caitlin Hendricks on 6/19/25.
//

import UIKit

struct Scenario {
    init(_ scene: String, _ opt_one: String, _ opt_two: String, _ next_one: Int, _ next_two: Int) {
        scenario = scene
        option_1 = opt_one
        option_2 = opt_two
        next_1 = next_one
        next_2 = next_two
        
    }
    
    var scenario: String
    var option_1: String
    var option_2: String
    var next_1: Int
    var next_2: Int
}

class ViewController: UIViewController {

    @IBOutlet weak var scenarioLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    
    var sceneIndex : Int = 0
    var goodEnding : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        updateUI()
    }
    
    let scenarios = [
        Scenario("You’ve just received a weird colored egg in the mail. What do you do with it?",
                "Incubate it and wait",
                "Cook and eat it",
                1, 2),
        Scenario("A strange creature that you’ve never seen before hatches. What do you want to do next?",
                "Raise it in secrecy",
                "Tell authorities and let them deal with it",
                3, 4),
        Scenario("Strange things start to happen to you and you don’t feel right. What do you do next?",
                "Go to the doctor and tell them everything",
                "Power through it",
                5, 6),
        Scenario("You’ve raised a powerful and immortal creature who will protect you for the rest of your life",
                "Restart",
                "Quit",
                0, 0),
        Scenario("You’re in trouble and charged for not coming to them sooner and hiding what could be a danger to society",
                 "Restart",
                 "Quit",
                 0, 0),
        Scenario("Authorities are notified and you’re taken in for unethical human experiments for research",
                "Restart",
                "Quit",
                0, 0),
        Scenario("After the initial stage of feeling unwell, you’ve developed super powers that you can secretly use to your advantage",
                 "Restart",
                 "Quit",
                 0, 0),
    ]
    
    @IBAction func optionSelected(_ sender: UIButton) {
        let currentScene = scenarios[sceneIndex]
        
        if sender == option1 {
            sceneIndex = currentScene.next_1
            updateUI()
        }
        else if sender == option2 {
            if currentScene.option_2 == "Quit" {
                showEnd()
            }
            else {
                sceneIndex = currentScene.next_2
                updateUI()
            }
        }
    }
    
    func updateUI() {
        scenarioLabel.text = scenarios[sceneIndex].scenario
        option1.setTitle(scenarios[sceneIndex].option_1, for: .normal)
        option2.setTitle(scenarios[sceneIndex].option_2, for: .normal)
        if sceneIndex == 3 || sceneIndex == 6 {
            resultLabel.text = "Success!"
            resultLabel.textColor = UIColor.green
            resultLabel.isHidden = false
        }
        else if sceneIndex == 4 || sceneIndex == 5 {
            resultLabel.text = "Fail!"
            resultLabel.textColor = UIColor.red
            resultLabel.isHidden = false
        }
        else if sceneIndex == 0 {
            resultLabel.isHidden = true
        }
    }
    
    func showEnd() {
        scenarioLabel.text = "Thanks for adventuring!"
        option1.isHidden = true
        option2.isHidden = true
        resultLabel.isHidden = true
    }
    
}

