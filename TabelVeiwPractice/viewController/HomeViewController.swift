//
//  HomeViewController.swift
//  TabelVeiwPractice
//
//  Created by Developer on 24/01/2023.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tabel: UITableView!
    var images : [String] = ["square.and.arrow.up", "square.and.arrow.up", "square.and.arrow.up", "square.and.arrow.up"]
   var names : [String] = ["FIRST","SECOUND", "THIRD", "FOURTH"]
       var images2 : [String] = ["square.and.arrow.up.fill", "square.and.arrow.up.fill", "square.and.arrow.up.fill", "square.and.arrow.up.fill"]
        var names2 : [String] = ["ONE","TWO", "THREE", "FOUR"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        self.tabel.register(UINib(nibName: "myTableViewCell", bundle: nil), forCellReuseIdentifier: "myTableViewCell")
        self.tabel.register(UINib(nibName: "customTableViewCell", bundle: nil), forCellReuseIdentifier: "customTableViewCell")
       self.tabel.delegate = self
        self.tabel.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            let cell = tabel.dequeueReusableCell(withIdentifier: "myTableViewCell" , for: indexPath) as! myTableViewCell
            cell.treeImage.image = UIImage(systemName: images[indexPath.row])
            return cell
        } else {
            let cell2 = tabel.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as! customTableViewCell
            cell2.myImaghe.image = UIImage(systemName: images2[indexPath.row])
            return cell2
        }
        
    }
    
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}


//let cell = tabel.dequeueReusableCell(withIdentifier: "myTableViewCell" , for: indexPath) as! myTableViewCell
// cell.treeImage.image  = UIImage(systemName: images[indexPath.row])
// cell.lblText.text = names[indexPath.row]
 //        let cell2 = tabel.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as! customTableViewCell
 //        cell2.myImaghe.image = UIImage(systemName: images2[indexPath.row])
 //        cell2.lblTitle.text = names2[indexPath.row]
//return cell
//}


