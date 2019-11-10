//
//  TableViewCell.swift
//  Avatar
//
//  Created by Rosh Sugathan Thaivalappil on 11/6/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit
protocol YourCellDelegate{
    func didPressButton(Owner: String,Status: String,Price : Int,cell : TableViewCell)
}
class TableViewCell: UITableViewCell {
    @IBOutlet var avatarimage: UIImageView!
    @IBOutlet weak var salelabel: UILabel!
    @IBOutlet weak var avatarlabel: UILabel!
    @IBOutlet weak var avatarlevel: UILabel!
    @IBOutlet weak var ownertext: UITextField!
    @IBOutlet weak var pricelabel: UILabel!
    var cellDelegate: YourCellDelegate?
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
    
    func set(imagename: String,name: String,level: Int, price: Int)
    {
        avatarimage.image = UIImage(named: imagename)
        avatarlabel!.text = name
        avatarlevel!.text = "Level: " + String(level)
        salelabel!.text = "Available for sale!!!"
        pricelabel!.text = String(price)
    }
    @IBAction func newtransaction(_ sender: Any)
    {
        cellDelegate?.didPressButton(Owner: ownertext!.text!,Status: salelabel!.text!,Price : Int(pricelabel!.text!)!,cell : self)
    }
}
