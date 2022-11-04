//
//  ProcedureView.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/17/22.
//

import SwiftUI

struct ProcedureView: View {
    var body: some View {
        ZStack {
        Image ("Paper2")
            .resizable()
            .scaledToFit()
        
            VStack {
            
            Image("Procedures")
                               .resizable()
                               .scaledToFit()
                               .padding(75)
                Text("Add a Video Link")
           
                
            }
         
 
        }
    }
}

struct ProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        ProcedureView()
    }
}
