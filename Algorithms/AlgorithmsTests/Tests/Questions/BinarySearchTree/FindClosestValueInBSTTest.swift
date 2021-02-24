//
//  FindClosestValueInBSTTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-23.
//

import XCTest
@testable import Algorithms

class FindClosestValueInBSTTest: XCTestCase {

    func test1() {
        let bst = BST(array: [10, 5, 2, 15, 1, 13, 22, 14])!
        let sut = FindClosestValueInBST.solution(bst, target: 12)

        XCTAssertEqual(sut, 13)
    }

    func test2() {
        let bst = BST(array: [10, 5])!
        let sut = FindClosestValueInBST.solution(bst, target: 6)

        XCTAssertEqual(sut, 5)
    }
}
