//
//  ProcedureView.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/17/22.
//

import SwiftUI

struct ProcedureView: View {
   
    var body: some View {
        
        NavigationView {
            ZStack {
                Image ("Paper2")
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Text("Library Procedures")
                   
                    HStack {
                        Text("Step 1: Check-In")
                        NavigationLink(destination: {
                            ProcedureVideoView(videoFilename: "IMG_0089")
                        }, label: {
                            Image(systemName: "play.circle.fill")
                        })
                    }
                    HStack {
                        Text("Step 2: Choose a Book")
                        NavigationLink(destination: {
                            
                        }, label: {
                            Image(systemName: "play.circle.fill")
                        })
                    }
                    HStack {
                        Text("Step 3: Check-Out")
                        NavigationLink(destination: {
                            
                        }, label: {
                            Image(systemName: "play.circle.fill")
                        })
                    }
                    HStack {
                        Text("Step 4: Read Quietly")
                        NavigationLink(destination: {
                            
                        }, label: {
                            Image(systemName: "play.circle.fill")
                        })
                    }
                    Image("Procedures")
                        .resizable()
                        .scaledToFit()
                        .padding(75)
                    Text("Add a Video Link")
                    
                    
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct ProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        ProcedureView()
    }
}
