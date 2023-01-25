//
//  MyCustomView.swift
//  TabelVeiwPractice
//
//  Created by Developer on 25/01/2023.
//

import UIKit

class MyCustomDummyView: UIView {
    
    @IBOutlet private var lblTitle: UILabel!
    @IBOutlet private var btnClose: UIButton!
    @IBOutlet private var imgLogo: UIImageView!
    
    private var colors: [UIColor] = [.blue, .brown, .cyan, .green, .magenta, .orange, .purple, .systemPink, .yellow, .red]
    
    class func createView(forModel model: RandomModel) -> MyCustomDummyView {
        let customView: MyCustomDummyView = Bundle.main.loadNibNamed("MyCustomView", owner: self, options: nil)?.first as! MyCustomDummyView
        
        customView.setupUI(forModel: model)
        
        return customView
    }
    
    private func setupUI(forModel model: RandomModel) {
        self.btnClose.addAction(UIAction(handler: { (_) in
            UIView.animate(withDuration: 0.2) {
                self.alpha = 0.0
            } completion: { (_) in
                let superv = self.superview
                self.removeFromSuperview()
                UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseInOut) {
                    superv?.layoutIfNeeded()
                } completion: { (_) in }
            }

        }), for: .touchUpInside)
        
        self.backgroundColor = UIColor.random()
        self.lblTitle.text = model.title
        
        DispatchQueue.global().async {
            guard let data = try? Data(contentsOf: model.imageURL) else { return }
            let image = UIImage(data: data)
            DispatchQueue.main.async {
                self.imgLogo.image = image
            }
        }
    }
}
