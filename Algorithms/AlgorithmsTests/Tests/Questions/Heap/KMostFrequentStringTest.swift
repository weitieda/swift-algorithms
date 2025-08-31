//
//  KMostFrequentStringTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2025-08-31.
//

@testable import Algorithms
import XCTest

class KMostFrequentStringTest: XCTestCase {
    private let k = 2
	
    func test_fullExample() {
        let input = ["go", "coding", "byte", "byte", "go", "interview", "go"]
        let expected = ["go", "byte"]
        let result = KMostFrequentString.solution(input, k)
        XCTAssertEqual(result, expected)
    }

    func test_alphabeticalOrder() {
        let input = ["go", "go1"]
        let expected = ["go1", "go"]
        let result = KMostFrequentString.solution(input, k)
        XCTAssertEqual(result, expected)
    }

    func test_makeDictionay() {
        let dictionary = KMostFrequentString.makeDictionary(
            ["go", "coding", "byte", "byte", "go", "interview", "go"]
        )
        XCTAssertEqual(dictionary.count, 4)
        XCTAssertEqual(dictionary["go"], 3)
        XCTAssertEqual(dictionary["coding"], 1)
        XCTAssertEqual(dictionary["byte"], 2)
        XCTAssertEqual(dictionary["interview"], 1)
    }
}
