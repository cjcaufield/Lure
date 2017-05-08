//
//  PlaceViewController.swift
//  Lure
//
//  Created by Colin Caufield on 2016-10-09.
//  Copyright © 2016 Secret Geometry, Inc. All rights reserved.
//

import UIKit

class PlaceViewController: UITableViewController {
    
    @IBOutlet var maxCountCell: UITableViewCell!
    @IBOutlet var maxWeightCell: UITableViewCell!
    @IBOutlet var datesCell: UITableViewCell!
    
    var place: Place? {
        
        didSet {
            self.configureView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.alwaysBounceVertical = false
        self.configureView()
    }
    
    func configureView() {
        
        if self.tableView != nil, let place = self.place {
            
            self.title = place.name
            self.datesCell.detailTextLabel?.text = "Summer"
            self.maxCountCell.detailTextLabel?.text = "\(place.maxCount)" + " fish"
            self.maxWeightCell.detailTextLabel?.text = "\(place.maxWeight)" + "kg"
        }
    }
}
