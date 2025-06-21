//
//  Scenarios.swift
//  Assignment_5
//
//  Created by Caitlin Hendricks on 6/21/25.
//

import Foundation

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
