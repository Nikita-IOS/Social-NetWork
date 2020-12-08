//
//  FriendsDatabase.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import Foundation

class FriendsDatabase {
    var friendlist: [Friend]
    
    init() {
        friendlist = [
        Friend(name: "Chris Hemsworth", photo: ["chris-hemsworth-1.jpg","chris-hemsworth-2.jpg","chris-hemsworth-3.jpg"]),
        Friend(name: "Dwayne Johnson", photo: ["dwayne-johnson-1.jpg","dwayne-johnson-2.jpg","dwayne-johnson-3.jpg"]),
        Friend(name: "Jennyfer Lawrence", photo: ["jennifer-lawrence-1.jpg","jennifer-lawrence-2.jpg","jennifer-lawrence-3.jpg"]),
        Friend(name: "Mark Ruffalo", photo: ["mark-ruffalo-1.jpg","mark-ruffalo-2.jpg","mark-ruffalo-3.jpg"]),
        Friend(name: "Natali Portman", photo: ["natali-portman-1.jpg","natali-portman-2.jpg","natali-portman-3.jpg"]),
        Friend(name: "Scarlett Johansson", photo: ["scarlett-johansson-1.jpg","scarlett-johansson-2.jpg","scarlett-johansson-3.jpg"])]
    }
}
