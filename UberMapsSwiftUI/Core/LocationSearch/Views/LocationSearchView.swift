//
//  LocationSearchView.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 11.03.2026.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText: String = ""
    @State private var destinationLocationText: String = ""
    var body: some View {
        VStack{
            // header view
            HStack{
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 6, height: 6)
                }
                
                VStack{
                    TextField("Start Location", text: $startLocationText)
                        .padding(.leading, 6)
                        .frame(height:32)
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(6)
                        .padding(.trailing)
                    
                    TextField("Destination Location", text: $destinationLocationText)
                        .padding(.leading, 6)
                        .frame(height:32)
                        .background(Color(.systemGray4))
                        .cornerRadius(6)
                        .padding(.trailing)

                }
            }
            .padding(.horizontal)
            .padding(.top, 72)
            
            // list view
            ScrollView(){
                VStack (alignment: .leading){
                    ForEach( 0 ..< 20, id: \.self){ _ in
                        LocationSearchResultCell()
                    }
                }
            }
        }
    }
}

#Preview {
    LocationSearchView()
}
