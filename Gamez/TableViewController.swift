//
//   TableViewController.swift
//   Gamez
//
//  Created by: Arthur Roolfs on 6/24/20.
//  Copyright © 2020 Arthur Roolfs. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var reviews: Reviews!
    

    override func viewDidLoad() {

        self.registerTableViewCells()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return GenreType.allCases.count
    }

    private func registerTableViewCells(){
        let textFieldCell = UINib(nibName: "GameReviews", bundle: nil)
        self.tableView.register(textFieldCell, forCellReuseIdentifier: "GameReviews")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.title = "Games"
        if let genre = GenreType(rawValue: section) {
            return reviews.games(for: genre).count
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return GenreType(rawValue: section)?.title()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GameReviews") as? GameReviews else {
            fatalError("Expected GameReviews")
        }

        if let genre = GenreType(rawValue: indexPath.section) {
            let genreGames = reviews.games(for: genre)
            let game = genreGames[indexPath.row]
            
            let subtitle = game.released.description
            cell.cellSubTitle?.text = subtitle
            
            let title = game.title
            cell.cellTitle?.text = title
            
            let imaged = game.getRating(rating: game.rating)
            
            cell.cellRating?.image = imaged
            
        }
        return cell
    }
    
}
