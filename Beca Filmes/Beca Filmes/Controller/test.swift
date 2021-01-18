//
//  test.swift
//  Beca Filmes
//
//  Created by Lucas Abdel Leitao on 18/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import XCTest

class test: XCTestCase {

    var vc: ViewController = ViewController()
    
    override func setUp() {
        vc.viewDidLoad()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
