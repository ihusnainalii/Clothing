//
//  PlayfairDisplay.swift
//  Clothing
//
//  Created by Husnain Ali on 13/07/2024.
//

import Foundation

enum PlayfairDisplay: String, CaseIterable {
    
    case black = "PlayfairDisplay-Black"
    case bold = "PlayfairDisplay-Bold"
    case regular = "PlayfairDisplay-Regular"
    
    var name: String {
        return rawValue
    }
    
    var fileName: String {
        return rawValue + ".ttf"
    }
    
    static func registerAll() {
        PlayfairDisplay.allCases.forEach { font in
            FontLoader.registerFont(fileName: font.fileName)
        }
    }
}
