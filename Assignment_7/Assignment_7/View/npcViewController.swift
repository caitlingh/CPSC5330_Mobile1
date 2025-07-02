//
//  npcViewController.swift
//  Assignment_7
//
//  Created by Caitlin Hendricks on 7/1/25.
//

import UIKit

class npcViewController: UIViewController, UITextViewDelegate {
    
    
    @IBOutlet weak var villagerImage: UIImageView!
    @IBOutlet weak var villagerName: UILabel!
    @IBOutlet weak var villagerBirthday: UILabel!
    @IBOutlet weak var villagerNotes: UITextView!
    
    var villager : Villager?
    var villagerIndex : Int?
    var villagerLogic : VillagerLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // populate label info
        if let v = villager {
            villagerImage.image = UIImage(named: v.image)
            villagerName.text = v.name
            villagerBirthday.text = v.birthday
            villagerNotes.text = v.notes
        }
    }
    
    // save updated notes with save button
    @IBAction func save(_ sender: UIButton) {
        guard let index = villagerIndex,
                  let logic = villagerLogic else {
                return
            }

        // overwrite existing notes
        let newNotes = villagerNotes.text ?? ""
            logic.villagers[index].notes = newNotes
            villager?.notes = newNotes
        
    }
    
}
