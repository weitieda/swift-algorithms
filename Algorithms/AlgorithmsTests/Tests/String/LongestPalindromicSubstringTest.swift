//
//  LongestPalindromicSubstringTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-10.
//

import XCTest
@testable import Algorithms

class LongestPalindromicSubstringTest: XCTestCase {

    func test1() {
        expect(input: "abaxyzzyxf", toBe: "xyzzyx")
        expect(input: "a", toBe: "a")
        expect(input: "aa", toBe: "aa")
        expect(input: "aaa", toBe: "aaa")
        expect(input: "aba", toBe: "aba")
        expect(input: "abac", toBe: "aba")
        expect(input: "dabac", toBe: "aba")
        expect(input: "aabc", toBe: "aa")
    }

    private func expect(input: String, toBe result: String) {
        let sut = LongestPalindromicSubstring.solution(string: input)
        XCTAssertEqual(result, sut)
    }
}
