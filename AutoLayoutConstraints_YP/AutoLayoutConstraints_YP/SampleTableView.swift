//
//  SampleTableView.swift
//  AutoLayoutConstraints_YP
//
//  Created by mallikarjun on 07/01/20.
//  Copyright © 2020 Mallikarjun H. All rights reserved.
//

import UIKit

class SampleTableView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mainTableView: UITableView!
   
    let imageArray = ["Chrysanthemum","Crocus","Daffodil","Geranium","Iris","Orchid", "Rose", "Tulip", "WaterLily"]
    let nameArray = ["Chrysanthemum","Crocus","Daffodil","Geranium","Iris","Orchid", "Rose", "Tulip", "WaterLily"]
    let priceArray = ["Rs.70","Rs.20","Rs.80","Rs.15","Rs.35","Rs.60", "Rs.20", "Rs.40", "Rs.35"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.mainTableView!.tableFooterView = UIView()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTableViewCellId", for: indexPath) as! SampleTableViewCell
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.profileImage.image = UIImage(named: self.imageArray[indexPath.row])
        cell.firstLabel.text = self.nameArray[indexPath.row]
        cell.secondLabel.text = self.priceArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }

}
