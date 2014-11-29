//
//  ProducerTests.swift
//  Bakies
//
//  Created by Hank Turowski on 11/29/14.
//  Copyright (c) 2014 Turowski. All rights reserved.
//

import UIKit
import XCTest

class ProducerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testProducerHasRatePerSecond() {
        var producer = Producer("")
        producer.ratePerSecond = 3.0
        XCTAssertEqual(producer.ratePerSecond, 3, "Rate should be 3 per second")
    }
    
    func testProducerHasNAme() {
        var producer = Producer("Grandma")
        XCTAssertEqual(producer.name, "Grandma", "Name should be 'Grandma'")
    }
    
    func testProducerCanProduce() {
        var producer = Producer("Grandma")
        producer.ratePerSecond = 2
        sleep(1)
        let unitsProduced = producer.produce()
        XCTAssertEqual(floor(unitsProduced), 2, "Producer should produce 2 units")
    }
    
    func testProducerContainsLastProducedDate() {
        let currentDate = NSDate()
        var producer = Producer("Grandma")
        producer.lastProduced = currentDate
        XCTAssertEqual(producer.lastProduced, currentDate, "Producer should have a reference to its last produced date")
    }
    
    func testProducerTracksProductionTime() {
        var producer = Producer("Grandma")
        producer.lastProduced = NSDate.distantPast() as NSDate
        producer.produce()
        XCTAssertNotEqual(producer.lastProduced, NSDate.distantPast() as NSDate)
    }
    
    func testRateValueIsReturnedAfter1Second() {
        var producer = Producer("Grandma")
        producer.ratePerSecond = 3.0
        producer.produce()
        sleep(1)
        let units = producer.produce()
        XCTAssertEqual(floor(units), 3.0, "Units should be 3.0 after 1 second")
    }
    
    func testRateValueIsReturnedAfter2Seconds() {
        var producer = Producer("Grandma")
        producer.ratePerSecond = 3.0
        producer.produce()
        sleep(2)
        let units = producer.produce()
        XCTAssertEqual(floor(units), 6.0, "Units should be 3.0 after 1 second")
    }

}
