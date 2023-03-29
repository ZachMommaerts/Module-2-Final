//
//  DataService.swift
//  Module 2 Final
//
//  Created by Zach Mommaerts on 3/9/23.
//

import Foundation

struct DataService{
    
    static func getLocalData() -> [Quoter]{
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else{
            return [Quoter]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                let quoteData = try decoder.decode([Quoter].self, from: data)
                
                for quote in quoteData{
                    quote.id = UUID()
                }
                
                return quoteData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        
        
        return [Quoter]()
    }
}
