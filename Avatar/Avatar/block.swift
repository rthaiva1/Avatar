//
//  block.swift
//  Avatar
//
//  Created by Rosh Sugathan Thaivalappil on 11/9/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import Foundation

class Block
{
    var hash: String!
    var data = [String : Int]()
    var previousHash: String!
    var index: Int!
    
    func createhash()->String
    {
        return NSUUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
}
