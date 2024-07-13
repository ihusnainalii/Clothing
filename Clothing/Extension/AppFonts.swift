//
//  AppFonts.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import Foundation
import SwiftUI

extension Font {
    
    // regular
    static let regular10 = Font.system(size: 10, weight: .regular)
    static let regular12 = Font.system(size: 12, weight: .regular)
    static let regular14 = Font.system(size: 14, weight: .regular)
    static let regular24 = Font.system(size: 24, weight: .regular)
    
    // semibold
    static let semibold14 = Font.system(size: 14, weight: .semibold)
    static let semibold20 = Font.system(size: 20, weight: .semibold)
    static let semibold28 = Font.system(size: 28, weight: .semibold)
    static let semibold64 = Font.system(size: 64, weight: .semibold)
    
    // medium
    static let medium12 = Font.system(size: 12, weight: .medium)
    static let medium14 = Font.system(size: 14, weight: .medium)
    
    // Custom fonts
    // Playfair regular
    static let playfairRegular20 = Font.custom(PlayfairDisplay.regular.name, size: 20)
    static let playfairRegular24 = Font.custom(PlayfairDisplay.regular.name, size: 24)
    static let playfairRegular28 = Font.custom(PlayfairDisplay.regular.name, size: 28)
    
    // Poppins regular
    static let poppinsRegular10 = Font.custom(Poppins.regular.name, size: 10)
    static let poppinsRegular12 = Font.custom(Poppins.regular.name, size: 12)
    static let poppinsRegular14 = Font.custom(Poppins.regular.name, size: 14)
    static let poppinsRegular24 = Font.custom(Poppins.regular.name, size: 24)
    
    // Poppins medium
    static let poppinsMedium12 = Font.custom(Poppins.medium.name, size: 12)
    static let poppinsMedium14 = Font.custom(Poppins.medium.name, size: 14)
    
    // Poppins semiBold
    static let poppinsSemibold14 = Font.custom(Poppins.semiBold.name, size: 14)
    static let poppinsSemibold20 = Font.custom(Poppins.semiBold.name, size: 20)
    static let poppinsSemibold28 = Font.custom(Poppins.semiBold.name, size: 28)
    static let poppinsSemibold64 = Font.custom(Poppins.semiBold.name, size: 64)
}


