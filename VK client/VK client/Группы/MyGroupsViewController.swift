//
//  MyGroupsViewController.swift
//  VK client
//
//  Created by Vladimir Pulkhrov on 14.07.2020.
//  Copyright © 2020 Vladimir Pulkhrov. All rights reserved.
//

import UIKit


struct Group: Equatable
{
    var groupName: String
    var groupAvatar: UIImage?
    
    init(_ groupName: String, _ groupAvatar: UIImage?)
    {
        self.groupName = groupName
        self.groupAvatar = groupAvatar
    }
}



class MyGroupsViewController: UITableViewController
{
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
    }
    
    var MyGroups: [Group] =
        
    [
        Group("MDK", UIImage(named: "darkfit")),
        Group("My Moscow", UIImage(named: "darkfit")),
        Group("Cats", UIImage(named: "darkfit")),
        Group("Cat", UIImage(named: "darkfit")),
        Group("CatDogs", UIImage(named: "darkfit")),
        Group("Cats1", UIImage(named: "darkfit")),
        Group("Cats2", UIImage(named: "darkfit"))
    ]

    
    @IBAction func addGroup(segue: UIStoryboardSegue)
    {
        if segue.identifier == "addGroup"
            
        {
            guard let allGroupsViewController = segue.source as? AllGroupsViewController else {return}
            
            
            if let indexPath = allGroupsViewController.tableView.indexPathForSelectedRow
                
            {
                let groups = allGroupsViewController.AllGroups[indexPath.row]
                
                if !MyGroups.contains(groups)
                {
                    MyGroups.append(groups)
                    tableView.reloadData()
                }
            }
        }
    }
    
    
    override func numberOfSections(in TableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return MyGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupsCell", for: indexPath) as!
        MyGroupsCell
        cell.groupName.text = MyGroups[indexPath.row].groupName
        cell.groupAvatar.image = MyGroups[indexPath.row].groupAvatar
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
           
           if editingStyle == .delete
           {
            MyGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
           }
    }
    
}
