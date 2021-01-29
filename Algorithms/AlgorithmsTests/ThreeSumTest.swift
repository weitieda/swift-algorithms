//
//  ThreeSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-28.
//

import XCTest
@testable import Algorithms

class ThreeSumTest: XCTestCase {
    
    func test1() {
        let input = [12, 3, 1, 2, -6, 5, -8, 6]
        let targetSum = 0
        
        let expected = [[-8, 2, 6], [-8, 5, 3], [-6, 1, 5]]
        
        let sut = ThreeSumDistinct.solution(input: input, targetSum: targetSum)
        XCTAssertEqual(expected.count, sut.count)
        avoidOrder(sut).forEach {
            XCTAssertTrue(avoidOrder(expected).contains($0))
        }
        
        let sut2 = ThreeSumDistinct.solution2(input: input, targetSum: targetSum)
        XCTAssertEqual(expected.count, sut2.count)
        avoidOrder(sut2).forEach {
            XCTAssertTrue(avoidOrder(expected).contains($0))
        }
    }
    
    func test2() {
        let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 15]
        let targetSum = 18
        
        let expected = [
            [1, 2, 15],
            [1, 8, 9],
            [2, 7, 9],
            [3, 6, 9],
            [3, 7, 8],
            [4, 5, 9],
            [4, 6, 8],
            [5, 6, 7]
          ]
        
        let sut = ThreeSumDistinct.solution(input: input, targetSum: targetSum)
        XCTAssertEqual(expected.count, sut.count)
        avoidOrder(sut).forEach {
            XCTAssertTrue(avoidOrder(expected).contains($0))
        }
        
        let sut2 = ThreeSumDistinct.solution2(input: input, targetSum: targetSum)
        XCTAssertEqual(expected.count, sut2.count)
        avoidOrder(sut2).forEach {
            XCTAssertTrue(avoidOrder(expected).contains($0))
        }
       
    }
    
    private func avoidOrder(_ array: [[Int]]) -> [[Int]] {
        array.map { $0.sorted() }
    }
}

