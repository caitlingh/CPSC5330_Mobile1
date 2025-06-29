//
//  ConversionLogic.swift
//  Assignment_6
//
//  Created by Caitlin Hendricks on 6/29/25.
//

import Foundation

struct ConversionLogic {
    // user input
    var usd : Int = 0
    
    // switch toggles
    var eurSwitch = true
    var jpySwitch = true
    var gbpSwitch = true
    var cadSwitch = true
    
    // currency exchange rates
    var eurRate : Double = 0.85
    var jpyRate : Double = 145.00
    var gbpRate : Double = 0.74
    var cadRate : Double = 1.37
    
    // calculate conversions
    var eur : Double? {
        return eurSwitch ? Double(usd) * eurRate : nil
    }
    
    var jpy : Double? {
        return jpySwitch ? Double(usd) * jpyRate : nil
    }
    
    var gbp : Double? {
        return gbpSwitch ? Double(usd) * gbpRate : nil
    }
    
    var cad : Double? {
        return cadSwitch ? Double(usd) * cadRate : nil
    }
    
    // validate and get usd input
    mutating func getUSD(input: String?) -> Bool {
        guard let input = input, let value = Int(input) else {
            return false
        }
        usd = value
        return true
    }
    
    // sets switches
    mutating func setEURSwitch(_ switchValue: Bool) {
        eurSwitch = switchValue
    }
    
    mutating func setJPYSwitch(_ switchValue: Bool) {
        jpySwitch = switchValue
    }
    
    mutating func setGBPSwitch(_ switchValue: Bool) {
        gbpSwitch = switchValue
    }
    
    mutating func setCADSwitch(_ switchValue: Bool) {
        cadSwitch = switchValue
    }
    
}
