//
//  AllGroupsViewController.swift
//  VK client
//
//  Created by Vladimir Pulkhrov on 14.07.2020.
//  Copyright © 2020 Vladimir Pulkhrov. All rights reserved.
//

import UIKit

struct AllGroup
{
    var AllGroupName: String
    var AllGroupAvatar: UIImage?
    
    init(_ AllGroupName: String, _ AllGroupAvatar: UIImage?)
    {
        self.AllGroupName = AllGroupName
        self.AllGroupAvatar = AllGroupAvatar
    }
}

var AllGroups: [AllGroup] =
    
[
    AllGroup("1", UIImage(named: "darkfit")),
    AllGroup("2", UIImage(named: "darkfit")),
    AllGroup("3", UIImage(named: "darkfit")),
    AllGroup("4", UIImage(named: "darkfit")),
    AllGroup("5", UIImage(named: "darkfit")),
    AllGroup("6", UIImage(named: "darkfit")),
    AllGroup("7", UIImage(named: "darkfit")),
    AllGroup("8", UIImage(named: "darkfit")),
    AllGroup("9", UIImage(named: "darkfit")),
    AllGroup("10", UIImage(named: "darkfit")),
    AllGroup("11", UIImage(named: "darkfit")),
    AllGroup("12", UIImage(named: "darkfit")),
    AllGroup("13", UIImage(named: "darkfit")),
    AllGroup("14", UIImage(named: "darkfit")),
    AllGroup("15", UIImage(named: "darkfit")),
    AllGroup("16", UIImage(named: "darkfit")),
    AllGroup("17", UIImage(named: "darkfit")),
]

class AllGroupsViewController: UITableViewController
{
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
    }
    
   
    override func numberOfSections(in TableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return AllGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as!
        AllGroupsCell
        
        cell.AllGroupName.text = AllGroups[indexPath.row].AllGroupName
        cell.AllGroupAvatar.image = AllGroups[indexPath.row].AllGroupAvatar
        
        return cell
    }
    
   
    
    
    
    
    
}
