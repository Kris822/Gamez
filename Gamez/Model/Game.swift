//
//   Game.swift
//   Gamez
//
//  Created by: Arthur Roolfs on 6/24/20.
//  Copyright © 2020 Arthur Roolfs. All rights reserved.
//

import Foundation
import UIKit


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
    
    func getRating(rating: Int) -> UIImage{
        if rating == 1{
            return UIImage(named: "oneStar")!
        }
        else if rating == 2{
            return UIImage(named: "twoStar")!
        }
        else if rating == 3{
            return UIImage(named: "threeStar")!
        }
        else{
            return UIImage(named: "IconImage")!
        }
    }
    
}
