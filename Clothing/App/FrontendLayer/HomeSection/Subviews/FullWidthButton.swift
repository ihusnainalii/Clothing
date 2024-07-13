//
//  FullWidthButton.swift
//  Clothing
//
//  Created by Husnain Ali on 12/07/2024.
//

import SwiftUI

struct FullWidthButton: View {
    
    var title: String
    var foregroundColor: Color
    var bgColor: Color
    var action: () -> Void
    
    init(title: String, 
         foregroundColor: Color = .black,
         bgColor: Color = .black,
         action: @escaping () -> Void) {
        self.title = title
        self.foregroundColor = foregroundColor
        self.bgColor = bgColor
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Spacer()
            Text(title)
                .font(.poppinsMedium14)
                .foregroundColor(foregroundColor)
            Spacer()
        }
        .frame(height: 50)
        .overlay {
            RoundedRectangle(cornerRadius: 25)
                .stroke(bgColor, lineWidth: 1)
        }
    }
}

#Preview {
    FullWidthButton(title: "Browse All", action: {
        
    })
}
