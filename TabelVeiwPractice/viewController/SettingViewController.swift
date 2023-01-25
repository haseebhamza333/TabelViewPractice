//
//  SettingViewController.swift
//  TabelVeiwPractice
//
//  Created by Developer on 24/01/2023.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet private var mainScrollView: UIScrollView!
    @IBOutlet private var containerStackView: UIStackView!

    private var randomModel: [RandomModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ourView = TextView.creatView()
        self.containerStackView.addArrangedSubview(ourView)
        ourView.changeTitle()
        
         let myView = Forpractice.createView()
        self.containerStackView.addArrangedSubview(myView)
        
        containerStackView.spacing = 8.0
        
        generateRandomModels()
        addDummyViews()
    
    }

    private func addDummyViews() {
        for model in randomModel {
            let customView = MyCustomDummyView.createView(forModel: model)
            self.containerStackView.addArrangedSubview(customView)
        }
    }

    private func generateRandomModels() {
        for _ in 0...100 {
            let url = URL(string: "https://source.unsplash.com/random/200x90")!
            let title = Randoms.randomFakeTitle()
            let model = RandomModel(title: title, imageURL: url)

            randomModel.append(model)
        }
    }
}

struct RandomModel {
    let title: String
    let imageURL: URL
}
