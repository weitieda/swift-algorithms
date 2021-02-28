//
//  BreadthFirstTraversalTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import XCTest
@testable import Algorithms

class BreadthFirstTraversalTest: XCTestCase {

    func test1() {
        /*
         ┌──nil
       ┌──50
       │ └──45
       40
       │ ┌──35
       └──30
         │ ┌──nil
         └──20
           └──10
         */

        let tree = BST(array: [40, 50, 30, 20, 35, 45, 10])!
        let sut = BreadthFirstTraversal.stackSolution(tree)

        XCTAssertEqual(sut, [40, 30, 50, 20, 35, 45, 10])
    }

    func test2() {

    }

    func test3() {

    }
}
