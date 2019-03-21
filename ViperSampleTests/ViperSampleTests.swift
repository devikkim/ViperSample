//
//  ViperSampleTests.swift
//  ViperSampleTests
//
//  Created by InKwon Devik Kim on 20/03/2019.
//  Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import XCTest
@testable import ViperSample

class ViperSampleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let service = RepositoriesService()
        
        let exp = expectation(description: "service_test")
        service.fetchRepositories(success: {
            print($0)
            exp.fulfill()
        }, failure: {
            print($0)
            exp.fulfill()
        })
        
        wait(for: [exp], timeout: 5.0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
