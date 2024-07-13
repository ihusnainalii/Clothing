//
//  SearchBarView.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        HStack(spacing: 20) {
            HStack {
                AppCatalog.Assets.search.image
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .center)
                
                TextField("Search for items or members", text: $searchText)
                    .font(.poppinsRegular14)
                
                Spacer()
            }
            .padding(.horizontal)
            .frame(height: 46)
            .background(AppCatalog.Colors.searchBg.color)
            
            AppCatalog.Assets.beg.image
                .resizable()
                .frame(width: 28, height: 28, alignment: .center)
        }
        .padding()
    }
}

#Preview {
    SearchBarView()
}
