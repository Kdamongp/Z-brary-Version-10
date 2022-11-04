//
//  ExpectationView.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/17/22
//

import SwiftUI

struct FeaturedView: View {
    var body: some View {
        ZStack {
        Image ("Paper2")
            .resizable()
            .scaledToFit()
            .padding()
        
            VStack {
                Image("Expectations")
                    .resizable()
                    .scaledToFit()
                    .padding(75)
              Text ("Add audio")
                }
        }
    }
}

struct ExpectationView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
