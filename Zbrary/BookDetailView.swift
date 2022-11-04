//
//  InventoryBookView.swift
//  Zbrary-preview
//
//  Created by Karen Seimears on 9/20/22.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    @State var reviews = [Review(id: UUID(), review: "This is a boring book", rating: 1, book: ["bookID":"1"]),
                          Review(id: UUID(), review: "This is a good book", rating: 4, book: ["bookID":"2"])
    ]
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
                    //                    ZStack {
                    //                        Image("bluebook")
                    //                            .resizable()
                    //                            .frame(width:400)
                    //                            .aspectRatio(contentMode: .fit)
                    //                        Text(book.title)
                    //                            .lineLimit(nil)
                    //                            .foregroundColor(.white)
                    //                            .multilineTextAlignment(.center)
                    //                            .foregroundColor(.white)
                    //                            .font(.title)
                    //                    }
                    AsyncImage(url: URL(string: "https://covers.openlibrary.org/b/isbn/\(book.isbn)-M.jpg?default=false")) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        Image ("bluebook")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400)
                    }
                    .frame(width: 400)
                    .aspectRatio(contentMode: .fit)
                    
                    Text(book.title)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                    
                    Text(book.author)
                        .foregroundColor(.red)
                    
                   Divider()
                        ForEach(reviews, id: \.id) { review in
                            VStack{
                                
                                VStack(alignment: .leading) {
                                    Spacer()
                                    EmojiRatingView(rating: Int16(review.rating))
                                    
                                }
                                HStack {
                                    Text("\"")
                                    Text(review.review)
                                    Text("\"")
                                    Spacer()
                                }
                    Divider()
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
