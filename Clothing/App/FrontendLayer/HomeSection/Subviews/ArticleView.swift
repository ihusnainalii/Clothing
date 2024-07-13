//
//  ArticleView.swift
//  Clothing
//
//  Created by Husnain Ali on 12/07/2024.
//

import SwiftUI

struct ArticleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AppCatalog.Assets.rectangle4174.image
                .frame(height: 100, alignment: .center)
            
            Text("From Tradition to Trendsetting: The Evolution of Style at Riyad Fashion Week")
                .font(.poppinsRegular12)
            
            Text("19 May 2024")
                .font(.poppinsRegular12)
        }
        .frame(width: 170)
    }
}

#Preview {
    HStack {
        ArticleView()
        ArticleView()
    }
}
