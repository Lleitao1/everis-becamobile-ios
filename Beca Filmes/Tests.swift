//
//  Tests.swift
//  Beca FilmesTests
//
//  Created by Lucas Abdel Leitao on 18/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import XCTest

class Tests: XCTestCase {

    var vc: ViewController = ViewController()
        
    override func setUp() {
        vc.viewDidLoad()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}