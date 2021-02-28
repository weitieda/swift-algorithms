//
//  BranchSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-28.
//

import XCTest
@testable import Algorithms

class BranchSumTest: XCTestCase {

    func test() {
        /*
             ┌──12
           ┌──10
           │ └──nil
           5
           │ ┌──4
           └──3
             │ ┌──nil
             └──2
               └──1
         */

        let tree = BST(array: [5, 3, 10, 2, 4, 1, 12])!
        let sut = BranchSum.solution(tree)

        XCTAssertEqual([11, 12, 27], sut)
    }

    func test2() {
        let tree = BST(array: [5])!
        let sut = BranchSum.solution(tree)

        XCTAssertEqual([5], sut)
    }
}
