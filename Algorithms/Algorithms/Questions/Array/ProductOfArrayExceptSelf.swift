//
//  ProductOfArrayExcepSelf.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-04.
//

import Foundation

/*
 
 Given an array nums of n integers where n > 1,
 return an array output such that output[i] is equal to the
 product of all the elements of nums except nums[i].

 Input:  [1,2,3,4]
 Output: [24,12,8,6]

 24 = 2 * 3 * 4
 12 = 1 * 3 * 4
 8 = 1 * 2 * 4
 6 = 1 * 2 * 3

 Note: Please solve it without division and in O(n).

 */

final class ProductOfArrayExceptSelf {

    /// Product except self equals numbers on the left * all number on the right
    /// So we can create two array with running product from left to right and
    /// right to left. Then zip them.
    ///
    /// t: O(n), s: O(n)
    static func solution(array: [Int]) -> [Int] {

        var leftProducts = Array(repeating: 1, count: array.count)

        var leftRunningProduct = 1
        for i in array.indices {
            leftProducts[i] = leftRunningProduct
            leftRunningProduct *= array[i]
        }

        var rightProducts = Array(repeating: 1, count: array.count)

        var rightRunningProduct = 1
        for i in stride(from: array.count-1, through: 0, by: -1) {
            rightProducts[i] = rightRunningProduct
            rightRunningProduct *= array[i]
        }

        return zip(leftProducts, rightProducts).map {$0 * $1}
    }

    // t: O(n), s: O(1)
    static func solution2(array: [Int]) -> [Int] {
        let count = array.count

        var result = Array(repeating: 1, count: count)

        var runningProduct = 1
        for i in array.indices {
            result[i] = runningProduct
            runningProduct *= array[i]
        }

        runningProduct = 1
        for i in stride(from: count-1, through: 0, by: -1) {
            result[i] *= runningProduct
            runningProduct *= array[i]
        }

        return result
    }

}
