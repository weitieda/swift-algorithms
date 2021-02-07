//
//  FindDuplicateNumber.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-05.
//

import Foundation

/*

 Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

 There is only one repeated number in nums, return this repeated number.
 
 Example 1:
 Input: nums = [1,3,4,2,2]
 Output: 2

 Example 2:
 Input: nums = [3,1,3,4,2]
 Output: 3

 Example 3:
 Input: nums = [1,1]
 Output: 1

 Example 4:
 Input: nums = [1,1,2]
 Output: 1
 
 */

final class FindDuplicateNumber {

    /*

     Solution 1:
     Sort then compare adjacent number
     t: O(nLog(n)), s: O(1)

     Solution 2:
     Use a set<Int> to track seen value
     t: O(n), s: O(n)

     Solution 3:
     If allow mutating, map seen value to index,
     convert that value to negative, same as question: `FirstDuplicateValue`
     t: O(n), s: O(1)

     */

    // t: O(nlog(n)), s: O(1)
    static func solution(array: [Int]) -> Int {

        // number range [1, n]
        var left = 1
        var right = array.count - 1

        while left < right {
            let middle = (left + right)/2
            let count = array.filter { $0 <= middle }.count
            if count <= middle {
                left = middle + 1
            } else {
                right = middle
            }
        }

        return left
    }

}
