//
//  ValidPalindromeTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-07.
//

@testable import Algorithms
import XCTest

class ValidPalindromeTest: XCTestCase {
    func test() {
        [
            ("12321", true),
            ("A man, a plan, a canal: Panama", true),
            ("", true),
            ("face a car", false),
            ("123", false),
        ].forEach { str, result in
            expect(result, when: ValidPalindrome.solution(string: str))
            expect(result, when: ValidPalindrome.solution2(string: str))
        }
    }
}
