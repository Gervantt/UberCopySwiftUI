//
//  UberMapsSwiftUIApp.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 10.03.2026.
//

import SwiftUI

@main
struct UberMapsSwiftUIApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
