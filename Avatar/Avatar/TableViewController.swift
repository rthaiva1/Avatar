//
//  TableViewController.swift
//  Avatar
//
//  Created by Rosh Sugathan Thaivalappil on 11/4/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let avatars =
        [ ["Arcanite Reaper",2,100000],
          ["Ashkandi",5,700000],
          ["Atiesh",3,500000],
          ["Benediction",2,600000],
          ["Black Bow",2,800000],
          ["Blackblade of Shahram",4,800000],
          ["Corrupted Ashbringer",1,400000],
          ["Dark Edge of Insanity",3,600000],
          ["Dragon’s Call",3,700000],
          ["Dragonwrath",5,1000000],
          ["Fandral’s Flamescythe",2,50000],
          ["Fangs of the Father",5,900000],
          ["Flamewrath",3,500000],
          ["Frostscythe of Lorde Ahune",1,100000],
          ["Gurthalak, Voice of the Deeps",2,900000],
          ["Headmaster’s Charge",6,1800000]
    ]
    var game: [String: Int] = ["Player1": 900000,"Player2": 320000,"Player3": 93454003450,"Player4": 234420]
    let chain = blockchain()
    let alert1 = UIAlertController(title: "Insufficient Funds", message: "Please check your balance you have Insuffucient funds to buy this item", preferredStyle: .alert)
    let alert2 = UIAlertController(title: "Invalid User", message: "You are not an authorized User.", preferredStyle: .alert)
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "avatarcell")
        self.add(owner: "Player1",amount: 0,type: "genesis")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return avatars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "avatarcell", for: indexPath) as! TableViewCell
        let avatar = avatars[indexPath.row][0] as! String
        let power   = avatars[indexPath.row][1] as! Int
        let coins   = avatars[indexPath.row][2] as! Int
        // Configure the cell...
        cell.cellDelegate = self
        cell.set(name: avatar, level: power, price: coins)
        return cell
    }
    
    func add(owner: String, amount: Int,type: String)
       {
        print(game[owner]!)
        print(amount)
           if game[owner] == nil {
            print("alert2")
               self.present(alert2, animated: true, completion: nil)
               return
           } else if game[owner]!-amount < 0 {
            print("alert1")
               game.updateValue(game[owner]!-amount, forKey: owner)
               self.present(alert1, animated: true, completion: nil)
               return
           } else {
               game.updateValue(game[owner]!-amount, forKey: owner)
           }
           if type == "genesis" {
            chain.createGenesisBlock(data: [owner: amount])
           } else if type == "normal" {
               chain.createBlock(data: [owner: amount])
           }
       }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TableViewController: YourCellDelegate
{
    func didPressButton(Owner: String,Status: String,Price : Int, cell : TableViewCell)
     {
        if(Status != "Sold")
        {
        add(owner: Owner,amount: Price,type: "normal")
        if (game[Owner] != nil)
        {
            if(game[Owner]! < 0)
            {
                game.updateValue(game[Owner]!+Price, forKey: Owner)
            }
            else
            {
            for visibleCell in tableView.visibleCells where visibleCell == cell {
                if let currentCell = visibleCell as? TableViewCell
                {
                    currentCell.salelabel.text! = "Sold"
                }
            }
            }
        }
        }
    }
}
