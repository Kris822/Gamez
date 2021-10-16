//
//   Game.swift
//   Gamez
//
//  Created by: Arthur Roolfs on 6/24/20.
//  Copyright © 2020 Arthur Roolfs. All rights reserved.
//

import Foundation

class Game {
    
    var title: String
    var genre: GenreType
    var released: Int
    var rating: Int
    
    init(title: String, genre: GenreType, released: Int, rating: Int) {
        
        self.title = title
        self.genre = genre
        self.released = released
        self.rating = rating
    }
    
}
