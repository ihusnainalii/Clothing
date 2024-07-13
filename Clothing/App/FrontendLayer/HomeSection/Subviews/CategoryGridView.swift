//
//  CategoryGridView.swift
//  Clothing
//
//  Created by Husnain Ali on 12/07/2024.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        
        ZStack() {
            AppCatalog.Assets._104.image
            HStack {
                Text("Minimalist")
                    .font(.poppinsMedium14)
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .background {
            Rectangle()
                .fill(AppCatalog.Colors.searchBg.color)
                .frame(width: 124, height: 124)
        }
    }
}

#Preview {
    HStack {
        CategoryGridView()
        CategoryGridView()
        CategoryGridView()
    }
}
