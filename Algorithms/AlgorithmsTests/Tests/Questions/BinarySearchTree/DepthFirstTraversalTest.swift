//
//  DepthFirstTraversalTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

@testable import Algorithms
import XCTest

class DepthFirstTraversalTest: XCTestCase {
    func test() {
        /*
                        40
                   30       50
                 20  35   45
               10
         */

        let tree = BST(array: [40, 50, 30, 20, 35, 45, 10])!
        let expectedResult = [40, 30, 20, 10, 35, 50, 45]

        expect(expectedResult, when: DepthFirstTraversal.stackSolution(tree))
        expect(expectedResult, when: DepthFirstTraversal.recursiveSolution(tree))
    }
}
