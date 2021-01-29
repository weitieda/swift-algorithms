//
//  MoveElementToEndTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-29.
//

import XCTest
@testable import Algorithms

class MoveElementToEndTest: XCTestCase {
    
    func test1() {
        let arr = [2, 1, 2, 2, 2, 3, 4, 2]
        
        let exp = [4, 1, 3, 2, 2, 2, 2, 2]
        
        let sut = MoveElementToEnd.solution(arr, 2)
        XCTAssertEqual(exp, sut)
    }
    
    func test2() {
        let arr = [1, 2, 2, 2, 3, 4, 2]
        
        let exp = [1, 2, 2, 2, 3, 2, 4]
        
        let sut = MoveElementToEnd.solution(arr, 4)
        XCTAssertEqual(exp, sut)
    }
    
    func test3() {
        let arr = [3, 3, 3, 2, 2, 2]
        
        let exp = [2, 2, 2, 3, 3, 3]
        
        let sut = MoveElementToEnd.solution(arr, 3)
        XCTAssertEqual(exp, sut)
    }
}

