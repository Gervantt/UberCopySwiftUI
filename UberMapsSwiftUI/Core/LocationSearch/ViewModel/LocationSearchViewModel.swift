//
//  LocationSearchViewModel.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 11.03.2026.
//

import Foundation
import MapKit
internal import Combine

class LocationSearchViewModel: NSObject, ObservableObject {
    
    // MARK: - Properties
    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation: String?
    
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = "" {
        // didSet shows the data everytime it updates
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }

    // MARK: - Lifecycle
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
    // MARK: - Helpers
    
    func selectLocation(_ location: String){
        self.selectedLocation = location
    }
}

extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}
