//
//  GameReviews.swift
//  Gamez
//
//  Created by Lee, Christopher on 10/16/21.
//  Copyright © 2021 Arthur Roolfs. All rights reserved.
//

import UIKit

class GameReviews: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellSubTitle: UILabel!
    @IBOutlet weak var cellRating: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
