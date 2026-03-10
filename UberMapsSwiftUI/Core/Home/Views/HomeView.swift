//
//  HomeView.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 10.03.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
