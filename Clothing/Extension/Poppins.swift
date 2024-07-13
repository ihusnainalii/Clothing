//
//  Poppins.swift
//  Clothing
//
//  Created by Husnain Ali on 13/07/2024.
//

import Foundation

enum Poppins: String, CaseIterable {
    
    case black = "Poppins-Black"
    case bold = "Poppins-Bold"
    case extraBold = "Poppins-ExtraBold"
    case extraLight = "Poppins-ExtraLight"
    case light = "Poppins-Light"
    case medium = "Poppins-Medium"
    case regular = "Poppins-Regular"
    case semiBold = "Poppins-SemiBold"
    case thin = "Poppins-Thin"
    
    var name: String {
        return rawValue
    }
    
    var fileName: String {
        return rawValue + ".ttf"
    }
    
    static func registerAll() {
        Poppins.allCases.forEach { font in
            FontLoader.registerFont(fileName: font.fileName)
        }
    }
}
