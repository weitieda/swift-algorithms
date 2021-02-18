//
//  ValidPalindromeTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-07.
//

import XCTest
@testable import Algorithms

class ValidPalindromeTest: XCTestCase {

    func test1() {
        let str = "12321"
        expect(true, when: str)
    }

    func test2() {
        let str = "A man, a plan, a canal: Panama"
        expect(true, when: str)
    }

    func test3() {
        let str = "123"
        expect(false, when: str)
    }

    func test4() {
        let str = "race a car"
        expect(false, when: str)
    }

    func test5() {
        let str = ""
        expect(true, when: str)
    }

    func expect(_ bool: Bool, when input: String) {
        let sut = ValidPalindrome.solution(string: input)
        let sut2 = ValidPalindrome.solution2(string: input)

        if bool {
            XCTAssertTrue(sut)
            XCTAssertTrue(sut2)
        } else {
            XCTAssertFalse(sut)
            XCTAssertFalse(sut2)
        }
    }
}
