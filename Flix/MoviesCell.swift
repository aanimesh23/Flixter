//
//  MoviesCell.swift
//  Flix
//
//  Created by Animesh Agrawal on 1/19/20.
//  Copyright © 2020 Animesh Agrawal. All rights reserved.
//

import UIKit

class MoviesCell: UITableViewCell {

    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
