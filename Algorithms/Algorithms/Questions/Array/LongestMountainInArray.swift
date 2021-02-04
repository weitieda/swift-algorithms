//
//  LongestMountain.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-01.
//

import Foundation

/*

 You may recall that an array arr is a mountain array if and only if:

 arr.length >= 3

 There exists some index i (0-indexed) with 0 < i < arr.length - 1 such that:
 * arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
 * arr[i] > arr[i + 1] > ... > arr[arr.length - 1]

 Given an integer array arr, return the length of the longest subarray, which is a mountain.
 Return 0 if there is no mountain subarray.

 e.g.
 Input: arr = [2,1,4,7,3,2,5]
 Output: 5
 Explanation: The largest mountain is [1,4,7,3,2] which has length 5.

 e.g.
 Input: arr = [2,2,2]
 Output: 0
 Explanation: There is no mountain.
 
 */

final class LongestMountainInArray {

    // t: O(n), s: O(1)
    static func solution(_ input: [Int]) -> Int {
        var count = 0
        for i in 1..<input.count-1 {
            let isPeek = input[i-1] < input[i] && input[i+1] < input[i]
            if isPeek {

                var leftIndex = i-1
                while leftIndex >= 1, input[leftIndex-1] < input[leftIndex] {
                    leftIndex -= 1
                }

                var rightIndex = i+1
                while rightIndex <= input.count-2, input[rightIndex] > input[rightIndex+1] {
                    rightIndex += 1
                }

                let currentCount = rightIndex - leftIndex + 1
                count = max(currentCount, count)
            }
        }
        return count
    }

}
