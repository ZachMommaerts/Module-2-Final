//
//  QuoterDetailView.swift
//  Module 2 Final
//
//  Created by Zach Mommaerts on 3/28/23.
//

import SwiftUI

struct QuoterDetailView: View {
    
    let quoter:Quoter
    
    var body: some View {
        ScrollView{
            Spacer(minLength: 75)
            VStack(alignment: .leading){
                Text(quoter.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 15)
                ForEach(quoter.quotes, id: \.self){ q in
                    Text(q)
                        .padding(.bottom, 10)
                }
            }
            .padding(10)
        }
    }
}

struct QuoterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoterModel()
        QuoterDetailView(quoter:model.quoterList[0])
    }
}
