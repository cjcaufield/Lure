//
//  PlacesViewController.swift
//  Lure
//
//  Created by Colin Caufield on 2016-10-09.
//  Copyright © 2016 Secret Geometry, Inc. All rights reserved.
//

import UIKit

class PlacesViewController: UITableViewController {
    
    var destinationPlace: Place?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Places"
        self.tableView.alwaysBounceVertical = false
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.places.count
    }
    
    open override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "Place", for: indexPath) as UITableViewCell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let place = Data.places[indexPath.row]
        cell.textLabel?.text = place.name
        cell.detailTextLabel?.text = ""
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        self.destinationPlace = Data.places[indexPath.row]
        return indexPath
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "Detail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let placeVC = segue.destination as! PlaceViewController
        placeVC.place = self.destinationPlace
        self.destinationPlace = nil
    }
}
