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

    // t: O(n^2), s: O(1)
    static func solution(input: [Int]) -> [[Int]] {
        var result = [[Int]]()

        if input.count < 3 {
            return result
        }

        let sortedInput = input.sorted()

        for i in 0..<sortedInput.count - 2 {
            if i > 0 && sortedInput[i] == sortedInput[i - 1] {
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
                    while j < k && sortedInput[j] == sortedInput[j - 1] {
                        j += 1
                    }
                    while j < k && sortedInput[k] == sortedInput[k + 1] {
                        k -= 1
                    }
                } else if sumNeeded < currentSum {
                    k -= 1
                    while j < k && sortedInput[k] == sortedInput[k + 1] {
                        k -= 1
                    }
                } else if sumNeeded > currentSum {
                    j += 1
                    while j < k && sortedInput[j] == sortedInput[j - 1] {
                        j += 1
                    }
                }
            }
        }

        return result
    }

}
