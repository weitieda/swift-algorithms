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
               when: ["eat", "tea", "tan", "ate", "nat", "bat"])

        expect(result: [["a"]],
               when: ["a"])

        expect(result: [[""]],
               when: [""])

        expect(result: [["123", "132"]],
               when: ["123", "132"])
    }

    private func expect(result: [[String]], when input: [String]) {
        let sut = GroupAnagrams.solution(strs: input)
        XCTAssertEqual(result, sut.map {$0.sorted()}.sorted(by: { $0[0] < $1[0] }))
    }
}
