//
//  LocationSearchActivationView.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 10.03.2026.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundStyle(.gray)
            
            Spacer()
            
        }
        .frame(width: UIScreen.main.bounds.width - 64, height: 50)
        .background(
            Rectangle()
                .fill(.white)
                .shadow(radius: 6)
        )
    }
}

#Preview {
    LocationSearchActivationView()
}
