//
//  TableLogic.swift
//  Assignment_7
//
//  Created by Caitlin Hendricks on 7/2/25.
//

import Foundation

struct Villager {
    var name: String!
    var gender: String!
    var birthday: String!
    var image: String!
    
    init(_ name: String, _ gender: String, _ birthday: String, _ image: String) {
        self.name = name
        self.gender = gender
        self.birthday = birthday
        self.image = image
    }
}
