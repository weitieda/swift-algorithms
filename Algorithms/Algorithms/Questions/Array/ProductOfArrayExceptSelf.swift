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

    // t: O(n), s: O(n)
    static func solution(array: [Int]) -> [Int] {

        var leftProducts = Array(repeating: 1, count: array.count)

        var currentLeftProduct = 1
        for i in array.indices {
            leftProducts[i] = currentLeftProduct
            currentLeftProduct *= array[i]
        }

        var rightProducts = Array(repeating: 1, count: array.count)

        var currentRightProduct = 1
        for i in stride(from: array.count-1, through: 0, by: -1) {
            rightProducts[i] = currentRightProduct
            currentRightProduct *= array[i]
        }

        return zip(leftProducts, rightProducts).map {$0 * $1}
    }

    // Follow up question answer, inlined one products array
    // t: O(n), s: O(1)
    static func solution2(array: [Int]) -> [Int] {

        var result = Array(repeating: 1, count: array.count)

        var currentProduct = 1
        for i in array.indices {
            result[i] = currentProduct
            currentProduct *= array[i]
        }

        currentProduct = 1
        for i in stride(from: array.count-1, through: 0, by: -1) {
            result[i] *= currentProduct
            currentProduct *= array[i]
        }

        return result
    }

}
