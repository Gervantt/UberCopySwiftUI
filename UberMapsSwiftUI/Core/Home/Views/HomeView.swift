//
//  HomeView.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 10.03.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack (alignment: .top){
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            LocationSearchActivationView()
                .padding(.top, 72)
            
            MapViewActionButton()
                .padding(.top, 4)
        }
        
    }
}

#Preview {
    HomeView()
}
