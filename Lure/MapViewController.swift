//
//  MapViewController.swift
//  Lure
//
//  Created by Colin Caufield on 2016-10-09.
//  Copyright © 2016 Secret Geometry, Inc. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView: MKMapView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.title = "Map"
        
        self.mapView.showsUserLocation = true
        
        let trackingButton = MKUserTrackingBarButtonItem(mapView: self.mapView)
        self.navigationItem.rightBarButtonItem = trackingButton
        
        //let userLocation =
        
        let span = MKCoordinateSpanMake(1.0, 1.0)
        let coordinate = CLLocationCoordinate2D(latitude: 49.324122, longitude: -124.276558)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        let regionThatFits = self.mapView.regionThatFits(region)
        
        self.mapView.setRegion(regionThatFits, animated:true)
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        
        var mapRegion = MKCoordinateRegion()
        mapRegion.center = mapView.userLocation.coordinate
        mapRegion.span.latitudeDelta = 0.2
        mapRegion.span.longitudeDelta = 0.2
        
        self.mapView.setRegion(mapRegion, animated: true)
    }

    func foo() {
        //let _ = MKPolygon(points: UnsafePointer<MKMapPoint>, count: Int)
    }
}
