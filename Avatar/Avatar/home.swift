//
//  home.swift
//  Avatar
//
//  Created by Rosh Sugathan Thaivalappil on 11/10/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBAction func asdas(_ sender: Any)
    {
                performSegue(withIdentifier: "view", sender: self)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }
 
}

