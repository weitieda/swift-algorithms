//
//  FindDuplicateNumberTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-05.
//

@testable import Algorithms
import XCTest

class FindDuplicateNumberTest: XCTestCase {
    func test() {
        [
            ([1, 3, 4, 2, 2], 2),
            ([1, 2, 2, 3, 4], 2),
        ].forEach { input, result in
            expect(result, when: FindDuplicateNumber.solution(array: input))
            expect(result, when: FindDuplicateNumber.solution2(array: input))
        }
    }
}
