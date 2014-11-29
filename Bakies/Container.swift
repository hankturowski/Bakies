//
//  Container.swift
//  Bakies
//
//  Created by Hank Turowski on 11/29/14.
//  Copyright (c) 2014 Turowski. All rights reserved.
//

import Foundation

class Container {
    var total: Double
    
    init() {
        total = 0
    }
    
    func add(units: Double = 1.0) {
        total += units
    }
}