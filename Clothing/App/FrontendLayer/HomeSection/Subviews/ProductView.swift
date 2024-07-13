//
//  ProductView.swift
//  Clothing
//
//  Created by Husnain Ali on 12/07/2024.
//

import SwiftUI

struct ProductView: View {
    
    var bgColor: Color = AppCatalog.Colors.searchBg.color
    var foregroundColor: Color = .black
    var isStaffPick = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(bgColor)
                    .frame(height: 216)
                
                AppCatalog.Assets.image.image
            }
            .applyIf(isStaffPick, apply: { view in
                view.overlay(alignment: .topLeading) {
                    Text("Staff Pick")
                        .font(.poppinsRegular10)
                        .padding(.horizontal, 4)
                        .padding(.vertical, 2)
                        .overlay {
                            RoundedRectangle(cornerRadius: 2)
                                .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                        }
                        .padding([.top, .leading], 8)
                }
            })
            
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text("Louis Vuitton")
                        .font(.poppinsSemibold14)
                        .foregroundColor(foregroundColor)
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(foregroundColor)
                }
                Text("Handbag")
                    .font(.poppinsRegular12)
                    .foregroundColor(foregroundColor)
                
                Text("Size")
                    .font(.poppinsRegular12)
                    .foregroundColor(AppCatalog.Colors.greyText.color)
            }
            
            Text("SAR 11200")
                .font(.poppinsMedium12)
                .foregroundColor(AppCatalog.Colors.greyText.color)
        }
    }
}

#Preview {
    HStack(spacing: 12) {
        ProductView(bgColor: AppCatalog.Colors.darkgrey.color, foregroundColor: .white)
        ProductView()
    }
    .padding()
}
