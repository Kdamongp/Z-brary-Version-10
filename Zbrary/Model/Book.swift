//
//  Book.swift
//  Zbrary
//
//  Created by Kyle Damon on 11/4/22.
//

import Foundation

struct Book: Codable,Identifiable,Hashable {
    var id: UUID
    var author: String
    var title: String
    var genre: String
}
