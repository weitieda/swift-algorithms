//
//  ThreeSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-28.
//

import Foundation

/*
 
 Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0?
 Find all unique triplets in the array which gives the sum of zero.

 Notice that the solution set must not contain duplicate triplets.

 Example 1:
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 
 Example 2:
 Input: nums = []
 Output: []
 
 Example 3:
 Input: nums = [0]
 Output: []
 
 */

final class ThreeSum {

    // t: O(n^2), s: O(n)
    static func solution(input: [Int]) -> [[Int]] {
        var result = [[Int]]()

        guard input.count > 2 else { return result }

        let sortedInput = input.sorted()

        for i in 0..<sortedInput.count - 2 {

            let isBaseNumberSameAsPrevious = i > 0 && sortedInput[i] == sortedInput[i - 1]
            if isBaseNumberSameAsPrevious {
                continue
            }

            var j = i + 1
            var k = sortedInput.count - 1

            while j < k {
                let currentSum = sortedInput[j] + sortedInput[k]
                let sumNeeded = -sortedInput[i]

                if sumNeeded == currentSum {
                    result.append([sortedInput[i], sortedInput[j], sortedInput[k]])
                    j += 1
                    k -= 1
                    skipDuplicateWhenMoveToLeft(j, &k, sortedInput)
                    skipDuplicateWhenMoveToRight(&j, k, sortedInput)
                } else if sumNeeded < currentSum {
                    k -= 1
                    skipDuplicateWhenMoveToLeft(j, &k, sortedInput)
                } else if sumNeeded > currentSum {
                    j += 1
                    skipDuplicateWhenMoveToRight(&j, k, sortedInput)
                }
            }
        }

        return result
    }

    fileprivate static func skipDuplicateWhenMoveToLeft(_ j: Int, _ k: inout Int, _ sortedInput: [Int]) {
        while j < k && sortedInput[k] == sortedInput[k + 1] {
            k -= 1
        }
    }

    fileprivate static func skipDuplicateWhenMoveToRight(_ j: inout Int, _ k: Int, _ sortedInput: [Int]) {
        while j < k && sortedInput[j] == sortedInput[j - 1] {
            j += 1
        }
    }

}
