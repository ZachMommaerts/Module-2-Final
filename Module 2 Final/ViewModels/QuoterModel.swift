//
//  QuoterModel.swift
//  Module 2 Final
//
//  Created by Zach Mommaerts on 3/9/23.
//

import Foundation

class QuoterModel: ObservableObject{
    
    @Published var quoterList:[Quoter]
    
    init(){
        quoterList = DataService.getLocalData()
    }
}
