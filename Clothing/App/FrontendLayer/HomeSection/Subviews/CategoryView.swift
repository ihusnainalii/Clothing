//
//  CategoryView.swift
//  Clothing
//
//  Created by Husnain Ali on 12/07/2024.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        VStack(spacing: 10) {
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(AppCatalog.Colors.searchBg.color)
                    .frame(width: 124, height: 124, alignment: .center)
                
                AppCatalog.Assets.changeImage.image
            }
            
            Text("Dresses")
                .font(.poppinsRegular12)
        }
    }
}

#Preview {
    CategoryView()
}
