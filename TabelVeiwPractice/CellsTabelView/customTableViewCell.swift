//
//  customTableViewCell.swift
//  TabelVeiwPractice
//
//  Created by Developer on 24/01/2023.
//

import UIKit

class customTableViewCell: UITableViewCell {

   
    @IBOutlet weak var myImaghe: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
