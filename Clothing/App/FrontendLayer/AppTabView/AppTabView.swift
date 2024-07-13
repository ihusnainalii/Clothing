//
//  AppTabView.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI

struct AppTabView: View {
    
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeView()
                .tabItem {
                    updateView(with: .home)
                }
            
            ShopView()
                .tabItem {
                    updateView(with: .shop)
                }
            
            SellView()
                .tabItem {
                    updateView(with: .sell)
                }
            
            NotificationView()
                .tabItem {
                    updateView(with: .notification)
                }
            
            PorfileView()
                .tabItem {
                    updateView(with: .me)
                }
        }
        .tint(.black)
        .onAppear {
            UITabBar.appearance().barTintColor = .white
            UITabBarItem.appearance().badgeColor = .black
            UITabBar.appearance().backgroundColor = .lightText
        }
    }
    
    @ViewBuilder func updateView(with tab: Tab) -> some View {
        VStack(spacing: 5) {
            Spacer()
            Text(tab.title)
                .font(.poppinsRegular12)
            
            Image(tab.icon)
        }
    }
}

#Preview {
    AppTabView()
}

enum Tab {
    
    case home
    case shop
    case sell
    case notification
    case me
    
    var title: String {
        switch self {
        case .home:
            "Home"
        case .shop:
            "Shop"
        case .sell:
            "Sell"
        case .notification:
            "Motification"
        case .me:
            "Me"
        }
    }
    
    var icon: String {
        switch self {
        case .home:
            AppCatalog.Assets.home.name
        case .shop:
            AppCatalog.Assets.shoppingCategories.name
        case .sell:
            AppCatalog.Assets.plusCircle.name
        case .notification:
            AppCatalog.Assets.bell.name
        case .me:
            AppCatalog.Assets.user.name
        }
    }
}
