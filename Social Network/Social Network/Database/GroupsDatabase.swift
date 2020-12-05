//
//  GroupsDatabase.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import Foundation

class GroupsDatabase {
    var myGrouplist = [Group]()
    var allGrouplist: [Group]
    
    init() {
        allGrouplist = [
        Group(title: "Apple", Picture: "apple.jpg"),
        Group(title: "BBC", Picture: "bbc.jpg"),
        Group(title: "Daily Shot", Picture: "dailyshot.jpg"),
        Group(title: "New York City", Picture: "newyork.jpg"),
        Group(title: "Puppies", Picture: "puppies"),
        Group(title: "Swift", Picture: "swift.jpg")]
    }
}
