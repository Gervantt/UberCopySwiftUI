//
//  LocationSearchView.swift
//  UberMapsSwiftUI
//
//  Created by Daulet Ozhanov on 11.03.2026.
//

import SwiftUI
import MapKit

struct LocationSearchView: View {
    @State private var destinationLocationText: String = ""
    @Binding var showLocationSearchView: Bool
    @EnvironmentObject var vm: LocationSearchViewModel
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
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
                        TextField("Start Location", text: $destinationLocationText)
                            .padding(.leading, 6)
                            .frame(height:32)
                            .background(Color(.systemGroupedBackground))
                            .cornerRadius(6)
                            .padding(.trailing)
                        
                        TextField("Destination Location", text: $vm.queryFragment)
                            .padding(.leading, 6)
                            .frame(height:32)
                            .background(Color(.systemGray4))
                            .cornerRadius(6)
                            .padding(.trailing)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.top, 72)
                
                Divider()
                    .padding(.vertical)
                // list view
                ScrollView(){
                    VStack (alignment: .leading){
                        ForEach( vm.results, id: \.self){ result in
                            LocationSearchResultCell(title: result.title, subtitle: result.subtitle)
                                .onTapGesture {
                                    vm.selectLocation(result.title)
                                    showLocationSearchView.toggle()
                                }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LocationSearchView(showLocationSearchView: .constant(false))
}
