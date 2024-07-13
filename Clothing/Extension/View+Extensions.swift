//
//  View+Extensions.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import Foundation
import SwiftUI

extension View {
    
    @ViewBuilder
    func applyIf<T: View>(_ condition: Bool, apply: (Self) -> T) -> some View {
        if condition {
            apply(self)
        } else {
            self
        }
    }
}
