//
//  CreditCartType.swift
//  Crediit Card
//
//  Created by Aisel Usmanova on 1/24/21.
//  Copyright © 2021 Aisel Usmanova. All rights reserved.
//

import Foundation
import UIKit

enum CreditCardType : String {
    
    case visa = "Visa"
    case mastercard = "Mastercard"
    case americanExpress = "American Express"
    case discovery = "Discovery"
    
    static var all: [CreditCardType] {
        return [
            .visa,
            .mastercard,
            .americanExpress,
            .discovery
        ]
    }
    
    var pattern: String {
        switch self {
        case .visa: return "^4[0-9]{12}(?:[0-9]{3})?$"
        case .mastercard: return "^5[1-5][0-9]{14}$"
        case .americanExpress: return "^3[47][0-9]{13}$"
        case .discovery: return "^6(?:011|5[0-9]{2})[0-9]{12}$"
        }
    }
    
    
    var exampleValue: String {
        switch self {
        case .visa: return "4111 1111 1111 1111"
        case .mastercard: return "5538 3838 8383 3838"
        case .americanExpress: return "3470 0000 0000 000"
        case .discovery: return "6550 0000 0000 0000"
        }
    }
}
