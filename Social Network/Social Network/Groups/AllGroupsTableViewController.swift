//
//  AllGroupsTableViewController.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import UIKit

class AllGroupsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupDatabase.allGrouplist.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        let groupTitle = groupDatabase.allGrouplist[indexPath.row].title
        let groupImage = groupDatabase.allGrouplist[indexPath.row].picture
        cell.groupLabel.text = groupTitle
        cell.groupImage.image = UIImage(named: groupImage)
        return cell
    }
}
