//
//  ContentView.swift
//  Zbrary
//
//  Kyle Damon Fall 2022
//  Modified on Sept 17, 2022
//

import SwiftUI

struct AllReviews: View {
    var book: Book = Book(id: UUID(), author: "Dr. Seuss", title: "Green Eggs and Ham", genre: "Everyone")
    var reviews: [Review] = [Review(id: UUID(), review: "It was good.", rating: 4, book: ["ID":"1"])]
    @State private var showingAddScreen = false


    var body: some View {
        Image ("Paper2")
            .resizable()
            .scaledToFit()
            .padding()
        
            .overlay(
            List {
                ForEach(reviews) { review in
                    VStack{
                        Spacer()
                        
                            VStack(alignment: .leading) {
                                Spacer()
                                EmojiRatingView(rating: Int16(review.rating))
                                HStack {
                                Text("Title:")
                                Text(book.title ?? "Unknown Title")
                                    .font(.headline)
                                }
                                HStack {
                                Text("written by")
                                    .padding(.leading)
                                Text(book.author ?? "Unknown Author")
                                    .foregroundColor(.secondary)
                                }
                            }
                        HStack {
                            Text("\"")
                            Text(review.review ?? "Unknown Review")
                            Text("\"")
                            Spacer()
                        }
                    }
                        Spacer()
                    }
                }
               
        )
    }
//                .onDelete(perform: deleteBooks)
//            NavigationView {
//
//            Text("Books")
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    EditButton()
//                }
//
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button {
//                        showingAddScreen.toggle()
//                    } label: {
//                        Label("Add Book", systemImage: "plus")
//                    }
//                }
//            }
//            .sheet(isPresented: $showingAddScreen) {
//                AddBookView()
//            }
//        }
//    }
//
//    func deleteBooks(at offsets: IndexSet) {
//        for offset in offsets {
//            let book = books[offset]
//            moc.delete(book)
//        }

//        try? moc.save()
//    }
//}

//struct ReviewView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReviewView()
//    }
}

