//
//  LocationSearchResultCell.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 11.03.2026.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundStyle(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Starbucks")
                    .font(.body)
                
                Text("Nurmakov 79, Almaty")
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
                
                Divider()
            }
            .padding(.horizontal, 8)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

#Preview {
    LocationSearchResultCell()
}
