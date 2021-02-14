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
        expect(n: 2, toBe: 1)
        expect(n: 3, toBe: 1)
        expect(n: 4, toBe: 2)
        expect(n: 5, toBe: 3)
        expect(n: 6, toBe: 5)
    }

    func expect(n: Int, toBe result: Int) {
        let sut1 = NthFibonacci.solutionTime2n(n: n)
        XCTAssertEqual(result, sut1)

        let sut2 = NthFibonacci.solutionOnOn(n: n)
        XCTAssertEqual(result, sut2)
    }
}
