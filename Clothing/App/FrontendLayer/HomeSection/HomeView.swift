//
//  HomeView.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            SearchBarView()
            
            ScrollView(showsIndicators: false) {
                
                SliderView(totalPages: 2) {
                    SliderImageView()
                }
                .frame(height: 476)
                
                ContainerView(title: "Recommended For You") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                ProductView()
                                    .tag(index)
                            }
                        }
                    }
                    
                    FullWidthButton(title: "Browse All") {
                        // Action to be performed
                    }
                    .padding(.top)
                    .padding(.trailing)
                }
                
                ContainerView(title: "Shop Womenswear") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                CategoryView()
                                    .tag(index)
                            }
                        }
                    }
                }
                
                ContainerView(title: "Shop Menswear") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                CategoryView()
                                    .tag(index)
                            }
                        }
                    }
                }
                
                ContainerView(title: "Staff Picks") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                ProductView(isStaffPick: true)
                                    .tag(index)
                            }
                        }
                    }
                    
                    FullWidthButton(title: "Browse All") {
                        // Action to be performed
                    }
                    .padding(.top)
                    .padding(.trailing)
                }
                
                SliderView(totalPages: 2) {
                    PromotionView()
                }
                .frame(height: 230)
                
                ContainerView(title: "Popular Designers") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                CategoryView()
                                    .tag(index)
                            }
                        }
                    }
                }
                
                ContainerView(title: "New Arrivals") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                ProductView()
                                    .tag(index)
                            }
                        }
                    }
                    
                    FullWidthButton(title: "Browse All") {
                        // Action to be performed
                    }
                    .padding(.top)
                    .padding(.trailing)
                }
                
                SaleView()
                
                ContainerView(title: "Shop by Style", isShowMore: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 45) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                CategoryGridView()
                                    .tag(index)
                            }
                        }
                    }
                }
                
                AppCatalog.Assets.divider.image
                    .resizable()
                    .frame(height: 67)
                    .padding(.bottom, -10)
                
                
                ContainerView(title: "Clp Edit: Summer Essentials",
                              subTitle: "Selected weekly by our fashion editorial team",
                              bgColor: .black, foregroundColor: .white, removeTopSpace: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                ProductView(bgColor: AppCatalog.Colors.darkgrey.color,
                                            foregroundColor: .white)
                                    .tag(index)
                            }
                        }
                    }
                    
                    FullWidthButton(title: "Browse All", foregroundColor: .white, bgColor: .white) {
                        // Action to be performed
                    }
                    .padding(.top)
                    .padding(.trailing)
                }
                
                ContainerView(title: "Articles") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(Array(0..<5), id: \.self) { index in
                                ArticleView()
                                    .tag(index)
                            }
                        }
                    }
                }
            }
            
            Divider()
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
