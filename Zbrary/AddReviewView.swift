//
//  AddBookView.swift
//  Zbrary
//
//  Kyle Damon Fall 2022
//

import SwiftUI

struct AddReviewView: View {
    @Environment(\.dismiss) var dismiss

    @State private var rating = 3
    @State private var review = ""
    
    var book: Book

    var body: some View {
       
        VStack {
            Text(book.title)
            Text(book.author)
            Text(book.genre)
         
            Form {
                Section {
//                    TextField("Add your review", text: $review)
//                        .autocorrectionDisabled()
                   
                TextEditor(text: $review)
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

