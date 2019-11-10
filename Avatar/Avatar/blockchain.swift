//
//  Chain.swift
//  Avatar
//
//  Created by Rosh Sugathan Thaivalappil on 11/9/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import Foundation

class blockchain
{
        
    var chain = [Block]()
    func createGenesisBlock(data:[String : Int]) {
        let genesisBlock = Block()
        genesisBlock.hash = genesisBlock.createhash()
        genesisBlock.data = data
        genesisBlock.previousHash = "0000"
        genesisBlock.index = 0
        chain.append(genesisBlock)
    }
     
    func createBlock(data:[String : Int]) {
        let newBlock = Block()
        newBlock.hash = newBlock.createhash()
        newBlock.data = data
        newBlock.previousHash = chain[chain.count-1].hash
        newBlock.index = chain.count
        chain.append(newBlock)
    }
}
