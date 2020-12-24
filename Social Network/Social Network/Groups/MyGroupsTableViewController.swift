//
//  MyGroupsTableViewController.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupDatabase.myGrouplist.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        let groupTitle = groupDatabase.myGrouplist[indexPath.row].title
        let groupImage = groupDatabase.myGrouplist[indexPath.row].picture
        cell.groupLabel.text = groupTitle
        cell.groupImage.image = UIImage(named: groupImage)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groupDatabase.myGrouplist.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            let allGroupsTableViewController = segue.source as! AllGroupsTableViewController
            if let indexPath = allGroupsTableViewController.tableView.indexPathForSelectedRow {
                let group = groupDatabase.allGrouplist[indexPath.row]
                groupDatabase.myGrouplist.append(group)
                tableView.reloadData()
            }
        }
    }
}
