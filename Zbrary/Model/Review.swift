//
//  Review.swift
//  Zbrary
//
//  Created by Kyle Damon on 11/4/22.
//

import Foundation

struct Review: Codable,Identifiable {
    var id: UUID
    var review: String
    var rating: Int
    var book: [String:String]
}
