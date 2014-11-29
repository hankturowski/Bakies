//
//  ContainerTests.swift
//  Bakies
//
//  Created by Hank Turowski on 11/29/14.
//  Copyright (c) 2014 Turowski. All rights reserved.
//

import UIKit
import XCTest

class ContainerTests: XCTestCase {

    var container: Container?
    
    override func setUp() {
        super.setUp()

        container = Container()
    }
    
    override func tearDown() {
        container = nil
        
        super.tearDown()
    }


    func testCanAddAUnitToAContainer() {
        container!.add()
        XCTAssertEqual(container!.total, 1, "Container total should be 1")
    }
    
    func testCanAddTwoUnitsToAContainer() {
        container!.add(units: 2)
        XCTAssertEqual(container!.total, 2, "Container total should be 2")
    }
    
    
}
