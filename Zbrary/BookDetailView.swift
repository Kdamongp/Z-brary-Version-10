//
//  InventoryBookView.swift
//  Zbrary-preview
//
//  Created by Karen Seimears on 9/20/22.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    @State var reviews = [Review(id: UUID(), review: "This is a boring book", rating: 1, book: ["bookID":"1"])]
    var body: some View {
        ScrollView {
            Group {
                VStack {
                    HStack {
                        NavigationLink(destination: AddReviewView(book: book)) {
                            Text("+ Add a Review for This Book")
                        }
                        .padding(50)
                    }
                    
                    Image("bluebook")
                        .resizable()
                        .scaledToFit()
                        .overlay(Text(book.title), alignment: .center)
                        .padding(6)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(.title)
                    
                    Text(book.title)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                    
                    Text(book.author)
                        .foregroundColor(.red)
                    
                    List {
                        ForEach(reviews, id: \.id) { review in
                            VStack{
                      
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        EmojiRatingView(rating: Int16(review.rating))
                                        HStack {
                                        Text("Title:")
                                        Text(book.title)
                                            .font(.headline)
                                        }
                                        HStack {
                                        Text("written by")
                                            .padding(.leading)
                                        Text(book.author)
                                            .foregroundColor(.secondary)
                                        }
                                    }
                                HStack {
                                    Text("\"")
                                    Text(review.review)
                                    Text("\"")
                                    Spacer()
                                }
                            }
    
                            }
                        }
                    
                   
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
}
//struct InventoryBookView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookDetailView()
//    }
//}
