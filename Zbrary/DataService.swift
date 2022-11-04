//
//  DataService.swift
//  Zbrary
//
//  Created by Kyle Damon on 11/4/22.
//

import Foundation
class DataService:ObservableObject{
    
    static let shared = DataService()
    @Published var allBooks = [Book]()
    
    init(){
        allBooks = [
            Book(id: UUID(), author: "John Smith", title: "My Book", genre: "Humor", isbn: "9780385371995"),
        Book(id: UUID(), author: "Dr. Seuss", title: "Green Eggs and Ham", genre: "Series", isbn: "0394800168"),
        Book(id: UUID(), author: "Brian Selzick", title: "Baby Monkey, Private Eye", genre: "Everyday", isbn: "9781338180619")
        ]
    }
}
