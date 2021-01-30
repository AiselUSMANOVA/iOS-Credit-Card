//
//  Date.swift
//  Crediit Card
//
//  Created by Aisel Usmanova on 1/24/21.
//  Copyright © 2021 Aisel Usmanova. All rights reserved.
//

import Foundation

fileprivate let calendar = Calendar(identifier: .gregorian)

extension Date {
    
    func beginningOfMonth() -> Date {
            var components = calendar.dateComponents([.year, .month, .day], from: self)
            components.day = 1
            return calendar.date(from: components)!
    }

    func endOfMonth() -> Date {
        var components = calendar.dateComponents([.year, .month, .day], from: self)
        components.day = 1
        components.month! = components.month! + 1
        let date = calendar.date(from: components)
        return (calendar as NSCalendar).date(byAdding: .day, value: -1, to: date!, options: [])!
    }
    
}
