//
//  myTableViewCell.swift
//  TabelVeiwPractice
//
//  Created by Developer on 24/01/2023.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var treeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
