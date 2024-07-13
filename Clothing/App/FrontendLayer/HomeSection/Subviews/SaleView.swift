//
//  SaleView.swift
//  Clothing
//
//  Created by Husnain Ali on 12/07/2024.
//

import SwiftUI

struct SaleView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack {
                    Text("LIMITED TIME OFFER")
                        .font(.poppinsRegular12)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                Text("Sellers Offer")
                    .font(.playfairRegular24)
                    .foregroundColor(.white)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(.black)
            
            VStack(alignment: .leading) {
                HStack(spacing: 12) {
                    HStack(spacing: 0) {
                        AppCatalog.Assets.saleItem.image
                            .resizable()
                            .frame(width: 99, height: 158, alignment: .center)
                            .padding(.leading, -10)
                        
                        Text("0%")
                            .font(.poppinsSemibold64)
                            .lineLimit(1)
                            .foregroundColor(.white)
                            .frame(width: 100, alignment: .center)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Cleopatra is your destination for authentic designer handbags. From iconic classics to contemporary must-haves. ")
                            .font(.poppinsRegular12)
                            .foregroundColor(.white)
                        
                        Button {
                                
                        } label: {
                            Text("Explore bags")
                                .font(.poppinsMedium12)
                                .foregroundColor(.white)
                                .padding(.vertical, 4)
                                .padding(.horizontal)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.white, lineWidth: 1)
                                }
                        }
                        .padding(.top)
                    }
                    
                    Spacer()
                }
            }
            .padding(.vertical, 12)
            .background(AppCatalog.Colors.yellow.color)
        }
    }
}

#Preview {
    SaleView()
}
