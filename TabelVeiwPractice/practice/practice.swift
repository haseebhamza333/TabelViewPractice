//
//  practice.swift
//  TabelVeiwPractice
//
//  Created by Developer on 25/01/2023.
//

import UIKit


class Forpractice: UIView {
    @IBOutlet private var bntPress: UIButton!
    @IBOutlet private var image: UIImageView!
    
    class func createView() -> Forpractice {
        let customView: Forpractice = Bundle.main.loadNibNamed("HView", owner: self, options: nil)?.first as! Forpractice
        
        return customView
        
    }
    
}





