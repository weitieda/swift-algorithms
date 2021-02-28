//
//  DepthFirstTraversalTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import XCTest
@testable import Algorithms

class DepthFirstTraversalTest: XCTestCase {

    func test1() {
        /*
                       40
                  30       50
                20  35   45
              10
        */

        let tree = BST(array: [40, 50, 30, 20, 35, 45, 10])!
        let expectedResult = [40, 30, 20, 10, 35, 50, 45]

        expect(expectedResult, when: tree)
    }

    private func expect(_ result: [Int], when tree: BST<Int>) {
        let sut = DepthFirstTraversal.stackSolution(tree)
        XCTAssertEqual(sut, result)

        let sut2 = DepthFirstTraversal.recursiveSolution(tree)
        XCTAssertEqual(sut2, result)
    }

    func test2() {

    }

    func test3() {

    }
}
