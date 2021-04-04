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

        [
            (BST(array: [5, 3, 10, 2, 4, 1, 12])!, [11, 12, 27]),
            (BST(array: [5])!, [5])
        ].forEach { (bst, result) in
            expect(result, when: BranchSum.solution(bst))
        }
    }
}
