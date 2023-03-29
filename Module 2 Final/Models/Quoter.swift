//
//  Quoter.swift
//  Module 2 Final
//
//  Created by Zach Mommaerts on 3/9/23.
//

import Foundation

class Quoter: Decodable, Identifiable{
    
    var id:UUID?
    var name:String
    var image:String
    var quotes:[String]
}
