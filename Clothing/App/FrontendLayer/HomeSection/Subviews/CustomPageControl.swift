//
//  CustomPageControl.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI

struct CustomPageControl: View {
    @Binding var selectedPage: Int
    let totalPages: Int

    var body: some View {
        HStack(spacing: 4) {
            ForEach(Array(0..<totalPages), id: \.self) { index in
                if selectedPage == index {
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .animation(.default, value: selectedPage)
                } else {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.gray)
                        .frame(width: 16, height: 8)
                        .animation(.default, value: selectedPage)
                }
            }
        }
    }
}
#Preview {
    CustomPageControl(selectedPage: .constant(0), totalPages: 5)
}
