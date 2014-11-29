//
//  Producer.swift
//  Bakies
//
//  Created by Hank Turowski on 11/29/14.
//  Copyright (c) 2014 Turowski. All rights reserved.
//

import Foundation

struct Producer {
    var ratePerSecond = 0.0
    var lastProduced = NSDate()
    let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    mutating func produce() -> Double {
        let currentTime = NSDate()
        let timeInterval = currentTime.timeIntervalSinceDate(lastProduced)
        lastProduced = currentTime
        return ratePerSecond * timeInterval
    }
}