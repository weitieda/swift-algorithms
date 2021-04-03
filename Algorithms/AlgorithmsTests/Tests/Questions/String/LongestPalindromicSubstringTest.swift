//
//  LongestPalindromicSubstringTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-10.
//

import XCTest
@testable import Algorithms

class LongestPalindromicSubstringTest: XCTestCase {
    func test() {
        [
            ("abaxyzzyxf", "xyzzyx"),
            ("a", "a"),
            ("aa", "aa"),
            ("aaa", "aaa"),
            ("aba", "aba"),
            ("abac", "aba"),
            ("dabac", "aba"),
            ("aabc", "aa")
        ].forEach { (str, result) in
            expect(result, when: LongestPalindromicSubstring.solution(string: str))
        }
    }
}
