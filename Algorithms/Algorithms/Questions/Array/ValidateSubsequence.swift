//
//  ValidateSubsequence.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-27.
//

import Foundation

/*
 Given two non-empty arrays of integers, write a
 function that determines whether the second
 array is a subsequence of the rst one.
 A subsequence of an array is a set of numbers
 that aren't necessarily adjacent in the array but
 that are in the same order as they appear in the
 array. For instance, the numbers [1, 3, 4]
 form a subsequence of the array
 [1, 2, 3, 4] , and so do the numbers
 [2, 4] . Note that a single number in an
 array and the array itself are both valid
 subsequences of the array.

 e.g.
 array = [5, 1, 22, 25, 6, -1, 8, 10]
 sequence = [1, 6, -1, 10]
 -> true
 */

class ValidateSubsequence {
    // t: O(n), s: O(1)
    static func solution(input: [Int], sequence: [Int]) -> Bool {
        var inputIndex = 0
        var seqIndex = 0

        while inputIndex != input.count && seqIndex != sequence.count {
            if input[inputIndex] == sequence[seqIndex] {
                seqIndex += 1
            }
            inputIndex += 1
        }

        return seqIndex == sequence.count
    }

    // t: O(n), s: O(1)
    static func solution2(input: [Int], sequence: [Int]) -> Bool {
        var seqIndex = 0

        for index in input.indices {
            if seqIndex == sequence.count {
                return true
            }
            if input[index] == sequence[seqIndex] {
                seqIndex += 1
            }
        }

        return seqIndex == sequence.count
    }
}
