//
//  NthFibonacciTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-14.
//

import XCTest
@testable import Algorithms

class NthFibonacciTest: XCTestCase {
    func test() {
        [
//            (42, 165580141),
            (6, 5), (2, 1),
            (3, 1)
        ].forEach { (n, m) in
            expect(m, when: NthFibonacci.solution2toN(n: n), timeout: 5)
            expect(m, when: NthFibonacci.solutionMemoization(n: n))
            expect(m, when: NthFibonacci.solutionIteration(n: n))
        }
    }
}
