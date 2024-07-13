//
//  ContainerView.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI

struct ContainerView<Content: View>: View {
    
    var title: String
    var subTitle: String?
    var content: Content
    var isShowMore: Bool
    var bgColor: Color
    var foregroundColor: Color
    var removeTopSpace: Bool
    
    init(title: String,
         isShowMore: Bool = true,
         subTitle: String? = nil,
         bgColor: Color = .white,
         foregroundColor: Color = .black,
         removeTopSpace: Bool = false,
         @ViewBuilder content: () -> Content) {
        self.title = title
        self.isShowMore = isShowMore
        self.subTitle = subTitle
        self.bgColor = bgColor
        self.foregroundColor = foregroundColor
        self.removeTopSpace = removeTopSpace
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(title)
                    .font(.playfairRegular24)
                    .foregroundColor(foregroundColor)
                
                Spacer()
                
                if isShowMore {
                    Image(systemName: "chevron.right")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .resizable()
                        .frame(width: 6, height: 12, alignment: .center)
                        .foregroundColor(.black)
                }
            }
            .padding(.trailing)
            
            if let subTitle {
                HStack {
                    Text(subTitle)
                        .font(.poppinsRegular12)
                        .foregroundColor(foregroundColor)
                    
                    Spacer()
                }
            }
            
            content
                .padding(.top)
                .background(bgColor)
        }
        .padding(.vertical, removeTopSpace ? 0 : 15)
        .padding(.leading)
        .background(bgColor)
    }
}

#Preview {
    ContainerView(title: "Testing", subTitle: "Testing can be done by me") {
        Text("Hello - world")
    }
}
