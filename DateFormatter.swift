//
//  DateFormatter.swift
//  Crediit Card
//
//  Created by Aisel Usmanova on 1/24/21.
//  Copyright © 2021 Aisel Usmanova. All rights reserved.
//

import Foundation

public extension DateFormatter {
    
    public convenience init(format: String) {
        self.init()
        dateFormat = format
    }
    
}
