//
//  SliderView.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI

struct SliderView<Content: View>: View {
    
    @State private var selectedPage = 0
    let totalPages: Int
    var content: Content
    
    init(totalPages: Int = 0,
         @ViewBuilder content: () -> Content) {
        self.totalPages = totalPages
        self.content = content()
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selectedPage) {
                ForEach(Array(0..<totalPages), id: \.self) { index in
                    content
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            CustomPageControl(selectedPage: $selectedPage, totalPages: totalPages)
                .padding(.top, 12)
        }
    }
}
