//
//  ViewController.swift
//  Assignment_7
//
//  Created by Caitlin Hendricks on 7/1/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var villagers = [
        Villager("Abigail", "Female", "Fall 13", "abigail"),
        Villager("Alex", "Male", "Summer 13", "alex"),
        Villager("Elliott", "Male", "Fall 5", "elliott"),
        Villager("Emily", "Female", "Spring 27", "emily"),
        Villager("Haley", "Female", "Spring 14", "haley"),
        Villager("Harvey", "Male", "Winter 14", "harvey"),
        Villager("Leah", "Female", "Winter 23", "leah"),
        Villager("Maru", "Female", "Summer 10", "maru"),
        Villager("Penny", "Female", "Fall 2", "penny"),
        Villager("Sam", "Male", "Summer 17", "sam"),
        Villager("Sebastian", "Male", "Winter 10", "sebastian"),
        Villager("Shane", "Male", "Spring 20", "shane")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villagers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "villager1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = villagers[indexPath.row].name
        content.secondaryText = villagers[indexPath.row].gender
        cell.contentConfiguration = content
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

