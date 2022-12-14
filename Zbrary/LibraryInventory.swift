//
//  LibraryInventory.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/8/22.
//

import SwiftUI


struct LibraryInventory: View {
    @State var library = DataService.shared.allBooks
    @State private var searchText = ""
    @State var filteredLibrary = DataService.shared.allBooks
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Search for a book to review from the list below by typing keywords in the search field below.")
                    .font(.title2)
                    .foregroundColor(.green)
                
                
                TextField("Search Here", text: $searchText)
                    .onChange(of: searchText, perform: { _ in
                        search()
                    })
                    .frame(minWidth: 0, maxWidth: 500, minHeight: 0, maxHeight: 50)
                    .padding(.trailing)
                    .foregroundColor(.blue)
                    .border(.gray)
                Spacer()
                
                ScrollView{
                    LazyVStack{
                        ForEach(filteredLibrary, id:\.id) { book in
                            NavigationLink {
                                BookDetailView(book: book)
                            } label: {
                                VStack {
                                    HStack {
                                        Text("Book Title:")
                                            .foregroundColor(.black)
                                            .padding(.leading)
                                        
                                        Text(book.title)
                                            .frame(maxWidth: .infinity,  alignment: .leading)
                                            .foregroundColor(.blue)
                                            .font(.body)
                                            .multilineTextAlignment(.leading)
                                            .padding(.trailing)
                                    }
                                    
                                    HStack {
                                        Text("Written by:")
                                            .foregroundColor(.black)
                                            .padding(.leading)
                                        
                                        Text(book.author)
                                            .multilineTextAlignment(.leading)
                                            .frame(maxWidth: .infinity,  alignment: .leading)
                                            .foregroundColor(.red)
                                            .font(.body)
                                        
                                    }
                                    Divider()
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        .navigationViewStyle(.stack)
    }
    func search () {
        if searchText.isEmpty {
            filteredLibrary = library
        } else {
            filteredLibrary = library.filter {
                $0.title.localizedCaseInsensitiveContains(searchText) ||
                $0.author.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}

struct LibraryInventory_Previews: PreviewProvider {
    static var previews: some View {
        LibraryInventory()
    }
}
