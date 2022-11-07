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
                    Image("procedures")
                        .resizable()
                        .scaledToFit()
//                        .padding(75)
                   
                    HStack {
                        Image("checkin")
                            .resizable()
                            .scaledToFit()
//                            .padding(75)
                        NavigationLink(destination: {
                            ProcedureVideoView(videoFilename: "procedureVideo")
                        }, label: {
                            Image(systemName: "play.circle.fill")
                                .font(.system(size: 42.0))
                        })
                    }
                    HStack {
                        Image("findabook")
                            .resizable()
                            .scaledToFit()
//                            .padding(75)
                        NavigationLink(destination: {
                            
                        }, label: {
                            Image(systemName: "play.circle.fill")
                                .font(.system(size: 42.0))
                        })
                    }
                    HStack {
                        Image("checkout")
                            .resizable()
                            .scaledToFit()
//                            .padding(75)
                        NavigationLink(destination: {
                            
                        }, label: {
                            Image(systemName: "play.circle.fill")
                                .font(.system(size: 42.0))
                        })
                    }
                    HStack {
                        Image("readquiet")
                            .resizable()
                            .scaledToFit()
//                            .padding(75)
//                        NavigationLink(destination: {
//
//                        }, label: {
//                            Image(systemName: "play.circle.fill")
//                        })
                    }
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
