//
//  AddBookView.swift
//  Zbrary
//
//  Kyle Damon Fall 2022
//

import SwiftUI

struct AddReviewView: View {
    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""
    
    @StateObject var library = ReadData()
    var book: Book
    let genres = ["Non Fiction", "Fiction", "Everyone", "Adventure", "Humor", "Mystery", "Scary","Series","Science Fiction/Fantasy","Biography"]

    var body: some View {
       
        NavigationView {
        
            Text(book.title)
            Text(book.author)
            Text(book.genre)
                     
                
            Form {
                Section {
                    TextField("Add your review", text: $review)
                    RatingView(rating: $rating)
                } header: {
                    Text("Write a review")
                } footer: {
                    Text("Any inappropriate content will be filtered and user banned.")
                }

                Section {
                    Button("Save") {
                        
                        dismiss()
                    }
                }
            .disabled(title.isEmpty || genre.isEmpty || author.isEmpty || review.count < 10)
            }
            .navigationTitle("Add Book")
        }
        .navigationViewStyle(.stack)
    }
}


//struct AddBookView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddReviewView()
//    }
//}

