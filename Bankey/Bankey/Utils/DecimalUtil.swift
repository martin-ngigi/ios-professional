//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Hummingbird on 09/06/2025.
//

import Foundation


extension Decimal {
    
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
