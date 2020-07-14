//
//  MyFriendsCell.swift
//  VK client
//
//  Created by Vladimir Pulkhrov on 10.07.2020.
//  Copyright © 2020 Vladimir Pulkhrov. All rights reserved.
//

import UIKit

class MyFriendsCell: UITableViewCell
    
{
    @IBOutlet weak var friendAvatar: UIImageView!
    @IBOutlet weak var friendName:UILabel!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
}
