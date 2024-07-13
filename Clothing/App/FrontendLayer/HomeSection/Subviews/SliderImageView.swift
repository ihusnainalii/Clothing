//
//  SliderImageView.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI

struct SliderImageView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            AppCatalog.Assets.image3.image
                .resizable()
            
            AppCatalog.Assets.shade.image
                .resizable()
            
            VStack(alignment:.leading) {
                HStack {
                    Text("Your Fashion Platform")
                        .font(.playfairRegular28)
                    
                    Spacer()
                }
                
                Text("Shop authentic designer pieces from our trusted community")
                    .font(.poppinsRegular12)
                
                Button {
                    
                } label: {
                    Text("Shop Now")
                        .font(.poppinsMedium12)
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 1)
                        }
                }
                .padding(.top, 20)
                .padding(.bottom, 16)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

#Preview {
    SliderImageView()
}
