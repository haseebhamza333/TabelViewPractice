//
//  TextView.swift
//  TabelVeiwPractice
//
//  Created by Developer on 25/01/2023.
//

import UIKit

class TextView: UIView {
    @IBOutlet private var lblTxt: UILabel!
    @IBOutlet private var lblTitle: UILabel!
    
    class func creatView() -> TextView {
        let temView : TextView = Bundle.main.loadNibNamed("SecoundView", owner: self, options: nil)?.first as! TextView
        return temView
    }
    
    public func changeTitle() {
        self.lblTitle.text = "right"
        self.lblTxt.text = "left"
    }

}
