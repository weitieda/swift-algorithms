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
        let input = "abaxyzzyxf"
        expect(input: input, toBe: "xyzzyx")
    }

    func test2() {
        let input = "a"
        expect(input: input, toBe: "a")
    }

    func test3() {
        let input = "aa"
        expect(input: input, toBe: "aa")
    }

    func test4() {
        let input = "aaa"
        expect(input: input, toBe: "aaa")
    }


    func test5() {
        let input = "aba"
        expect(input: input, toBe: "aba")
    }

    func test6() {
        let input = "abac"
        expect(input: input, toBe: "aba")
    }

    private func expect(input: String, toBe result: String) {
        let sut = LongestPalindromicSubstring.solution(string: input)
        XCTAssertEqual(result, sut)
    }
}
