//
//  RemoveDuplicatesFromSortedOrderLinkedListTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-06.
//

@testable import Algorithms
import XCTest

class RemoveDuplicatesFromSortedOrderLinkedListTest: XCTestCase {
    func test() {
        [
            ([1], "[1]"),
            ([1, 2, 3], "[1, 2, 3]"),
            ([1, 1, 3, 4, 4, 4, 5, 6, 6], "[1, 3, 4, 5, 6]"),
        ].forEach { list, result in
            expect(result, when: RemoveDuplicatesFromSortedOrderLinkedList.solution(list: list).description)
        }
    }
}
