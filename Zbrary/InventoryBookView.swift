//
//  InventoryBookView.swift
//  Zbrary-preview
//
//  Created by Karen Seimears on 9/20/22.
//

import SwiftUI

struct InventoryBookView: View {
    
    
    @StateObject var library = ReadData()
    @State private var searchText = ""
    @State var filteredLibrary = ReadData().collection
    
    
    var body: some View {
            
            Group {
                VStack {
                    HStack {
                        NavigationLink(destination: AddBookView()) {
                            Text("+ Add a Review for This Book")
                        }
                        .padding(50)
                        
                        NavigationLink(destination: ReviewView()) {
                            Text("📖 Read Reviews for This Book")
                        }
                    }
                    
                    Image("bluebook")
                        .resizable()
                        .scaledToFit()
                        .overlay(Text("The Blue Fairy Book"), alignment: .center)
                        .padding(6)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(.title)
                    
                    Text("The Blue Fairy Book")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                    
                    Text("Andrew Lang")
                        .foregroundColor(.red)
                    
                    Spacer()
                    Spacer()
                }
           
            
            //                .toolbar {
            //                    ToolbarItem(placement: .navigationBarLeading) {
            //                        Button("+ Add a review for this book") {
            //                            AddBookView()
            //                        }
            //                    }
            //                    ToolbarItem(placement: .navigationBarTrailing) {
            //                        Button("📖 Read this book's reviews") {
            //                            BookView()
        }
        .navigationViewStyle(.stack)
    }
    }

struct InventoryBookView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryBookView()
    }
}
