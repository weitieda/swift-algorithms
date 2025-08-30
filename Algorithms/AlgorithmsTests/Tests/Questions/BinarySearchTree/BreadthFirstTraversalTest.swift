//
//  BreadthFirstTraversalTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

@testable import Algorithms
import XCTest

class BreadthFirstTraversalTest: XCTestCase {
    func test() {
        /*
                        40
                   30       50
                 20  35   45
               10
         */

        let tree = BST(array: [40, 50, 30, 20, 35, 45, 10])!

        expect([40, 30, 50, 20, 35, 45, 10],
               when: BreadthFirstTraversal.queueSolution(tree))
    }
}
