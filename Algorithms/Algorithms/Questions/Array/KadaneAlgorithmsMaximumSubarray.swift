//
//  KadaneAlgorithmsMaximumSubarray.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-03-30.
//

import Foundation

/*

 https://leetcode.com/problems/maximum-subarray/

 Given an integer array nums, find the contiguous subarray (containing at least one number)
 which has the largest sum and return its sum.

 Example 1:

 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.

 */

enum KadaneAlgorithmsMaximumSubarray {
    // t: O(n^2), s: O(1)
    static func solution(nums: [Int]) -> Int {
        var maxSum = Int.min

        for i in nums.indices {
            var currentRunningSum = 0
            for j in i ..< nums.count {
                currentRunningSum += nums[j]
                maxSum = max(currentRunningSum, maxSum)
            }
        }

        return maxSum
    }

    // t: O(n), s: O(1)
    static func solutionKadane(nums: [Int]) -> Int {
        var maxSum = nums[0]

        var runningSum = nums[0]

        for i in 1 ..< nums.count {
            // For every new number, maxSum either equals current number or
            // current number + prevMaxSum
            runningSum = max(runningSum + nums[i], nums[i])

            maxSum = max(maxSum, runningSum)
        }

        return maxSum
    }
}
