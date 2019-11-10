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
    @IBOutlet weak var salelabel: UILabel!
    @IBOutlet weak var avatarlabel: UILabel!
    @IBOutlet weak var avatarlevel: UILabel!
    @IBOutlet weak var ownertext: UITextField!
    @IBOutlet weak var pricelabel: UILabel!
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
        avatarlabel!.text = ""
        avatarlevel!.text = ""
        ownertext!.text = ""
        pricelabel!.text = ""
    }
    
    func set(name: String,level: Int, price: Int)
    {
        avatarlabel!.text = name
        avatarlevel!.text = "Level: " + String(level)
        salelabel!.text = "Available for sale!!!"
        pricelabel!.text = String(price)
    }
    @IBAction func newtransaction(_ sender: Any)
    {
        add(owner: ownertext!.text! ,amount: Int(pricelabel!.text!)!)
    }
    
    func add(owner: String, amount: Int) {

    }
}
