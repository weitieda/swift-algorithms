//
//  MonotonicArray.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-30.
//

import Foundation

/*
 
 Write a function that takes in an array of integers and returns a boolean
 representing whether the array is monotonic.

 An array is said to be monotonic if its elements, from left to right, are
 entirely non-increasing or entirely non-decreasing.

 Non-increasing elements aren't necessarily exclusively decreasing; they simply
 don't increase. Similarly, non-decreasing elements aren't necessarily
 exclusively increasing; they simply don't decrease.
 
 Note that empty arrays and arrays of one element are monotonic.
 
 e.g.
 array = [-1, -5, -10, -1100, -1100, -1101, -1102, -9001]
 -> true
 
 */

final class MonotonicArray {

    // t: O(n), s: O(1)
    static func solution(_ input: [Int]) -> Bool {
        isMonotoneIncreasing(input) || isMonotoneDecreasing(input)
    }
    
    private static func isMonotoneIncreasing(_ array: [Int]) -> Bool {
        for i in 0..<array.count - 1 where array[i] > array[i+1] {
            return false
        }
        return true
    }
    
    private static func isMonotoneDecreasing(_ array: [Int]) -> Bool {
        for i in 0..<array.count - 1 where array[i] < array[i+1] {
            return false
        }
        return true
    }
    
    // t: O(n), s: O(1)
    static func solution2(_ input: [Int]) -> Bool {
        var isMonotoneIncreasing = true
        var isMonotoneDecreasing = true
        
        for i in 0..<input.count - 1 {
            
            let shouldBeMonotoneIncreasingButFoundDecreasing = isMonotoneIncreasing && input[i] > input[i+1]
            if shouldBeMonotoneIncreasingButFoundDecreasing {
                isMonotoneIncreasing = false
            }
            
            let shouldBeMonotoneDecreasingButFoundIncreasing = isMonotoneDecreasing && input[i] < input[i+1] 
            if shouldBeMonotoneDecreasingButFoundIncreasing {
                isMonotoneDecreasing = false
            }
            
            if !isMonotoneIncreasing && !isMonotoneDecreasing {
                return false
            }
        }
        
        return true // all same number
    }

}
