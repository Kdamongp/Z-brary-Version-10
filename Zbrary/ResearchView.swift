//
//  ResearchView.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/17/22.
//

import SwiftUI

struct ResearchView: View {
    var body: some View {
        
        
        Image ("Paper2")
            .resizable()
            .scaledToFit()
        //            .padding()
        
            .overlay(
                
                VStack {
                    
                    Image("apps sites")
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Button {
                            UIApplication.shared.open(URL(string: "https://www.tumblebooklibrary.com/auto_login.aspx?u=gpisd&p=books")!)
                        }label: {
                            
                            Image("Tumble icon")
                                .resizable()
                                .scaledToFit()
                                .padding(.leading)
                        }
                        Image("tumble words")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing)
                        Spacer()
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Button {
                            UIApplication.shared.open(URL(string: "https://www.pebblego.com/")!)
                        }label: {
                            
                            Image("Pebble icon")
                                .resizable()
                                .scaledToFit()
                                .padding(.leading)
                            
                        }
                        Image("pebble words")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing)
                        Spacer()
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Button {
                            UIApplication.shared.open(URL(string: "https://learn360.infobase.com/PortalPlayLists.aspx?wid=109982")!)
                        }label: {
                            
                            Image("Learn icon")
                                .resizable()
                                .scaledToFit()
                                .padding(.leading)
                        }
                        Image("learn words")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing)
                        Spacer()
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Button {
                            UIApplication.shared.open(URL(string: "https://online.culturegrams.com/kids/")!)
                        }label: {
                            
                            Image("cultureGram icon")
                                .resizable()
                                .scaledToFit()
                                .padding(.leading)
                            
                        }
                        Image("culture words")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing)
                        Spacer()
                        Spacer()
                    }
                    
                    
                    Image("Tap")
                        .resizable()
                        .scaledToFit()
                }
            )
        
    }
}

struct ResearchView_Previews: PreviewProvider {
    static var previews: some View {
        ResearchView()
    }
}
