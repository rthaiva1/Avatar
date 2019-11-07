//
//  TableViewCell.swift
//  Avatar
//
//  Created by Rosh Sugathan Thaivalappil on 11/6/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var avatarimage: UIImageView!
    @IBOutlet weak var avatarLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var avatarLevel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        Init()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        // Initialization code
        Init()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func Init()
    {
        avatarLabel!.text = ""
        avatarLevel!.text = ""
        ownerLabel!.text = ""
        priceLabel!.text = ""
    }
    
    func set(name: String,level: Int,owner: String?, price: Int)
    {
        avatarLabel!.text = name
        avatarLevel!.text = String(level)
        if(owner == nil)
        {
            ownerLabel!.text = "Buy Now"
        }
        else{
            ownerLabel!.text = "Owner: " + owner!
        }

        priceLabel!.text = String(price)
    }
}
