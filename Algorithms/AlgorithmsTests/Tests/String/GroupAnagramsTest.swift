//
//  GroupAnagramsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-12.
//

import XCTest
@testable import Algorithms

class GroupAnagramsTest: XCTestCase {

    func test1() {
        expect(result: [["ate", "eat", "tea"], ["bat"], ["nat", "tan"]],
               input: ["eat", "tea", "tan", "ate", "nat", "bat"])

        expect(result: [["a"]],
               input: ["a"])

        expect(result: [[""]],
               input: [""])

        expect(result: [["123", "132"]],
               input: ["123", "132"])
    }

    private func expect(result: [[String]], input: [String]) {
        let sut = GroupAnagrams.solution(strs: input)
        XCTAssertEqual(result, sut.map {$0.sorted()}.sorted(by: { $0[0] < $1[0] }))
    }
}
