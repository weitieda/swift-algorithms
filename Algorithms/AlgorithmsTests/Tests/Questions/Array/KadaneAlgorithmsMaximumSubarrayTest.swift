//
//  KadaneAlgorithmsMaximumSubarrayTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-30.
//

@testable import Algorithms
import XCTest

class KadaneAlgorithmsMaximumSubarrayTest: XCTestCase {
    func test() {
        [
            ([-2, 1, -3, 4, -1, 2, 1, -5, 4], 6),
            ([-2, 100, -3, 4, -1, 2, 1], 103),
            ([1], 1),
            ([-1, 2], 2),
        ].forEach { arr, result in
            expect(result, when: KadaneAlgorithmsMaximumSubarray.solution(nums: arr))
            expect(result, when: KadaneAlgorithmsMaximumSubarray.solutionKadane(nums: arr))
        }
    }
}
