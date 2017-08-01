//
//  LeeCode_SwiftTests.swift
//  LeeCode_SwiftTests
//
//  Created by admin on 31/07/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import XCTest
@testable import LeeCode_Swift

class LeeCode_SwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            
            let fourSum : FourSum = FourSum();
            print(fourSum.fourSum([-2,-3,-1,0,0,-1,1,2,3,3,5,-6,-5,8,7,-4,3,-9,-5], 0));
            
        }
    }
    
}
