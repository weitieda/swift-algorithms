//
//  FindClosestValueInBSTTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-23.
//

import XCTest
@testable import Algorithms

class FindClosestValueInBSTTest: XCTestCase {

    func test() {
        [
            (BST(array: [10, 5, 2, 15, 1, 13, 22, 14])!, 12, 13),
            (BST(array: [10, 5])!, 6, 5)
        ].forEach { (bst, target, result) in
            expect(result, when: FindClosestValueInBST.solution(bst, target: target))
        }
    }
}
