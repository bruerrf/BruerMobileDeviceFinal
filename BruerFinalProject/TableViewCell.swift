//
//  TableViewCell.swift
//  BruerFinalProject
//
//  Created by user185344 on 12/5/20.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var mainText: UILabel!
    @IBOutlet var linkButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
