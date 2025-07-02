//
//  ViewController.swift
//  Assignment_7
//
//  Created by Caitlin Hendricks on 7/1/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var villagerTable: UITableView!
    
    var villagerlogic = VillagerLogic()
    var selectedVillager : Villager?
    var selectedVillagerIndex : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        villagerTable.dataSource = self
        villagerTable.delegate = self
    }
    
    // sets table row count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villagerlogic.villagers.count
    }
    
    // displays villagers name and gender in table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "villager1", for: indexPath)
        let villager = villagerlogic.villagers[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = villager.name
        content.secondaryText = villager.gender
        cell.contentConfiguration = content
        return cell
    }
    
    // tracks selected villager from table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedVillagerIndex = indexPath.row
        selectedVillager = villagerlogic.villagers[indexPath.row]
        performSegue(withIdentifier: "toNPCViewController", sender: self)
    }
    
    // unwind segue with save button
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        villagerTable.reloadData()
    }
    
    // navigation prep
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toNPCViewController",
           let destination = segue.destination as? npcViewController,
           let index = selectedVillagerIndex {
                   
                   destination.villagerLogic = villagerlogic
                   destination.villagerIndex = index
                   destination.villager = villagerlogic.villagers[index]
               }
        }
    
}

