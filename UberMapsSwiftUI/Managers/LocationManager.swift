//
//  LocationManager.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 10.03.2026.
//

import CoreLocation

class LocationManager: NSObject{
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else {
            return
        }
        print(locations.first)
        locationManager.stopUpdatingLocation()
    }
}
