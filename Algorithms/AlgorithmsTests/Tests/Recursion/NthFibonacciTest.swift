//
//  NthFibonacciTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-14.
//

import XCTest
@testable import Algorithms

class NthFibonacciTest: XCTestCase {

    func test1() {
        expect(nthNumber: 2, toBe: 1)
        expect(nthNumber: 3, toBe: 1)
        expect(nthNumber: 4, toBe: 2)
        expect(nthNumber: 5, toBe: 3)
        expect(nthNumber: 6, toBe: 5)

        XCTAssertEqual(39088169,
                       NthFibonacci.solutionMemoization(n: 39))
        XCTAssertEqual(39088169,
                       NthFibonacci.solutionIteration(n: 39))
    }

    func expect(nthNumber: Int, toBe result: Int) {
        let sut1 = NthFibonacci.solutionTime2n(n: nthNumber)
        XCTAssertEqual(result, sut1)

        let sut2 = NthFibonacci.solutionMemoization(n: nthNumber)
        XCTAssertEqual(result, sut2)


        let sut3 = NthFibonacci.solutionIteration(n: nthNumber)
        XCTAssertEqual(result, sut3)
    }
}
