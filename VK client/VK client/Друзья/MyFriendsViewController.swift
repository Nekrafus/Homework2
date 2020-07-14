//
//  MyFriendsViewController.swift
//  VK client
//
//  Created by Vladimir Pulkhrov on 10.07.2020.
//  Copyright © 2020 Vladimir Pulkhrov. All rights reserved.
//

import UIKit

struct MyFriend
{
    var friendName: String
    var friendAvatar: UIImage?
    
    init(_ friendName: String, _ friendAvatar: UIImage?)
    {
        self.friendName = friendName
        self.friendAvatar = friendAvatar
    }
}

var MyFriends: [MyFriend] =
[
    MyFriend("Вася", UIImage(named: "darkfit")),
    MyFriend("Паша", UIImage(named: "darkfit")),
    MyFriend("Артем", UIImage(named: "darkfit"))
]

class MyFriendsViewController: UITableViewController
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
        return MyFriends.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFriendsCell", for: indexPath) as!
        MyFriendsCell
        cell.friendName.text = MyFriends[indexPath.row].friendName
        cell.friendAvatar.image = MyFriends[indexPath.row].friendAvatar
        return cell
    }
}
