
//
//  nearMe.swift
//  hinttell
//
//  Created by Mac Mini on 7/22/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit
import MapKit

class nearMe: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(initialLocation)
        
        loadInitialData()
        mapView.addAnnotations(artworks)
        
        mapView.delegate = self
        
        
        // show artwork on map
        //    let artwork = Artwork(title: "King David Kalakaua", locationName: "Waikiki Gateway Park",
        //      discipline: "Sculpture", coordinate: CLLocationCoordinate2D(latitude: 21.283921,
        //        longitude: -157.831661))
        //    mapView.addAnnotation(artwork)
    }
    
    var artworks = [Artwork]()
    func loadInitialData() {
        // 1
        let fileName = NSBundle.mainBundle().pathForResource("PublicArt", ofType: "json");
        var readError : NSError?
        var data: NSData = NSData(contentsOfFile: fileName!, options: NSDataReadingOptions(0), error: &readError)!
        
        // 2
        var error: NSError?
        let jsonObject: AnyObject! = NSJSONSerialization.JSONObjectWithData(data,
            options: NSJSONReadingOptions(0), error: &error)
        
        // 3
        if let jsonObject = jsonObject as? [String: AnyObject] where error == nil,
            // 4
            let jsonData = JSONValue.fromObject(jsonObject)?["data"]?.array {
                for artworkJSON in jsonData {
                    if let artworkJSON = artworkJSON.array,
                        // 5
                        artwork = Artwork.fromJSON(artworkJSON) {
                            artworks.append(artwork)
                    }
                }
        }
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    // MARK: - location manager to authorize user location for Maps app
    //  var locationManager = CLLocationManager()
    //  func checkLocationAuthorizationStatus() {
    //    if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse {
    //      mapView.showsUserLocation = true
    //    } else {
    //      locationManager.requestWhenInUseAuthorization()
    //    }
    //  }
    //  
    //  override func viewDidAppear(animated: Bool) {
    //    super.viewDidAppear(animated)
    //    checkLocationAuthorizationStatus()
    //  }
    
}


