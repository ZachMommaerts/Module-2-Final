//
//  ContentView.swift
//  Module 2 Final
//
//  Created by Zach Mommaerts on 3/9/23.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var quoterList = QuoterModel()
    var body: some View {
        ScrollView {
            ForEach(quoterList.quoterList){q in
                ZStack{
                    Image(q.image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                    VStack(alignment: .leading){
                        Text(q.quotes[0])
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 1.0)
                        
                        Text("- " + q.name)
                            .foregroundColor(Color.white)
                    }
                    .padding(5)
                }
            }
        }
        .padding()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
