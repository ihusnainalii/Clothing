//
//  PromotionView.swift
//  Clothing
//
//  Created by Husnain Ali on 12/07/2024.
//

import SwiftUI

enum ImageSide {
    case left
    case right
}

struct PromotionView: View {
    
    var side: ImageSide = .left
    
    var body: some View {
        HStack(spacing: 0) {
            
            if side == .left {
                AppCatalog.Assets.image2.image
                    .resizable()
                    .frame(width: 140)
                
            }
            
            VStack(alignment: .leading) {
                Spacer()
                Text("FIND YOUR DEAL")
                    .font(.poppinsRegular10)
                    .foregroundColor(.white)
                
                Text("Designer handbags")
                    .font(.playfairRegular20)
                    .foregroundColor(.white)
                
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
                Spacer()
            }
            .padding()
            .background {
                Rectangle()
                    .fill(.black)
            }
            
            if side == .right {
                AppCatalog.Assets.image2.image
                    .resizable()
                    .frame(width: 140)
                
            }
        }
        .padding(.horizontal, -10)
    }
}

#Preview {
    PromotionView()
}
