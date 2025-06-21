//
//  ScenarioLogic.swift
//  Assignment_5
//
//  Created by Caitlin Hendricks on 6/21/25.
//

import Foundation

struct ScenarioLogic {
    var sceneIndex : Int = 0
    
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
    
    func getSceneIndex() -> Int {
        return sceneIndex
    }
    
    mutating func setSceneIndex(to index : Int) {
        sceneIndex = index
    }
    
    func getNextScenario() -> String {
        return scenarios[sceneIndex].scenario
    }
    
    func getOption1() -> String {
        return scenarios[sceneIndex].option_1
    }
    
    func getOption2() -> String {
        return scenarios[sceneIndex].option_2
    }
    
    func getNext1() -> Int {
        return scenarios[sceneIndex].next_1
    }
    
    func getNext2() -> Int {
        return scenarios[sceneIndex].next_2
    }
}
