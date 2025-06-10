//
//  ViewController.swift
//  Assignment_4
//
//  Created by Caitlin Hendricks on 6/8/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var saveEntry: UILabel!
    
    var moodEmoji : String = "😐"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        saveEntry.text = ""
    }

    @IBAction func moodSelected(_ sender: UISlider) {
        
        // changes mood label based on slider
        let mood = sender.value
        
        switch mood {
        case 0...20:
            moodLabel.text = "Very Sad 😢"
            moodEmoji = "😢"
        case 21...40:
            moodLabel.text = "Sad 🙁"
            moodEmoji = "🙁"
        case 41...60:
            moodLabel.text = "Neutral 😐"
            moodEmoji = "😐"
        case 61...80:
            moodLabel.text = "Happy 🙂"
            moodEmoji = "🙂"
        case 81...100:
            moodLabel.text = "Very Happy 😄"
            moodEmoji = "😄"
        default:
            moodLabel.text = "Neutral 😐"
            moodEmoji = "😐"
        }
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        // get and format date from datepicker
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, y"
        let formattedDate = formatter.string(from: date.date)
        
        saveEntry.text = "On \(formattedDate), you felt \(moodEmoji)"
        //saveEntry.isHidden = false
    }
    
}

