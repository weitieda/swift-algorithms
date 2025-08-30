//
//  ReverseWordsInStringTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-14.
//

@testable import Algorithms
import XCTest

class ReverseWordsInStringTest: XCTestCase {
    func test() {
        [
            ("London bridge is falling down!", "down! falling is bridge London"),
            ("", ""),
            ("ab", "ab"),
        ].forEach { string, result in
            expect(result, when: ReverseWordsInString.solutionSpaceO1(string: string))
        }
    }
}
