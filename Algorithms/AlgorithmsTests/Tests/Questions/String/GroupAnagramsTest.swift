//
//  GroupAnagramsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-12.
//

import XCTest
@testable import Algorithms

class GroupAnagramsTest: XCTestCase {
    func test() {
        [
            (
                ["eat", "tea", "tan", "ate", "nat", "bat"],
                [["ate", "eat", "tea"], ["bat"], ["nat", "tan"]]
            ),
            (
                ["a"],
                [["a"]]
            ),
            (
                [""],
                [[""]]
            ),
            (
                ["123", "132"],
                [["123", "132"]]
            )
        ].forEach { (input, result) in
            let same = isSame2DArray(GroupAnagrams.solution(strs: input), result)
            expect(true, when: same)
        }
    }
}
