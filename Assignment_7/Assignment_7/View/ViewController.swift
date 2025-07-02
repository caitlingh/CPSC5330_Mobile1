//
//  ViewController.swift
//  Assignment_7
//
//  Created by Caitlin Hendricks on 7/1/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var villagerlogic = VillagerLogic()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villagerlogic.villagers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "villager1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = villagerlogic.villagers[indexPath.row].name
        content.secondaryText = villagerlogic.villagers[indexPath.row].gender
        cell.contentConfiguration = content
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        // Leave blank
    }
    
    


}

