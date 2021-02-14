//
//  ReverseWordsInStringTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-14.
//

import XCTest
@testable import Algorithms

class ReverseWordsInStringTest: XCTestCase {

    func test() {
        expect("London bridge is falling down!",
               toBe: "down! falling is bridge London")
    }

    func expect(_ string: String, toBe result: String) {
        let sut = ReverseWordsInString.solutionO1(string: string)
        XCTAssertEqual(result, sut)
    }
}
