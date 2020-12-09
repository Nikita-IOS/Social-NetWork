//
//  GroupsDatabase.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import Foundation

class GroupDatabase {
    var myGrouplist = [Group]()
    var allGrouplist: [Group]
    
    init() {
        allGrouplist = [
        Group(title: "Apple", picture: "apple.jpg"),
        Group(title: "BBC", picture: "bbc.jpg"),
        Group(title: "Daily Shot", picture: "dailyshot.jpg"),
        Group(title: "New York City", picture: "newyork.jpg"),
        Group(title: "Puppies", picture: "puppies"),
        Group(title: "Swift", picture: "swift.jpg")]
    }
}

var groupDatabase = GroupDatabase()
