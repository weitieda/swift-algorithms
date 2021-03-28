//
//  RemoveDuplicatesFromSortedOrderLinkedListTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-06.
//

import XCTest
import DataStructure
@testable import Algorithms

class RemoveDuplicatesFromSortedOrderLinkedListTest: XCTestCase {

    func test1() {
        let input = [1, 1, 3, 4, 4, 4, 5, 6, 6]
        var list = LinkedList(array: input)

        let sut = RemoveDuplicatesFromSortedOrderLinkedList.solution(input: &list)

        XCTAssertEqual(sut.description, "[1, 3, 4, 5, 6]")

    }

    func test2() {
        let input = [1]
        var list = LinkedList(array: input)

        let sut = RemoveDuplicatesFromSortedOrderLinkedList.solution(input: &list)

        XCTAssertEqual(sut.description, "[1]")
    }

    func test3() {
        let input = [1, 2, 3]
        var list = LinkedList(array: input)

        let sut = RemoveDuplicatesFromSortedOrderLinkedList.solution(input: &list)

        XCTAssertEqual(sut.description, "[1, 2, 3]")

    }
}
