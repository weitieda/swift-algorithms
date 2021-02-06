//
//  FirstDuplicateValue.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-06.
//

import Foundation

/*
 
 Given an array of integers between 1 and n, inclusive, where n is the length of the array,
 write a function that returns the first integer that appears more than once
 (when the array is read from left to right).

 In other words, out of all the integers that might occur more than once in the
 input array, your function should return the one whose first duplicate value
 has the minimum index.
 
 If no integer appears more than once, your function should return -1
 
 Note that you're allowed to mutate the input array
 
 e.g.
 array = [2, 1, 5, 2, 3, 3, 4]
 return 2
 // 2 is the first integer that appears more than once.
 // 3 also appears more than once, but the second 3 appears after the second 2.
 
 e.g.
 array = [2, 1, 5, 3, 3, 2, 4]
 return 3
 
 */

final class FirstDuplicateValue {

    // t: O(n), s: O(1)
    static func solution(array: inout [Int]) -> Int {
        for v in array {
            
            /// Because each number is in [1, n],
            /// we could utilize index to mark seen number
            /// e.g. If we see 5, we make `array[abs(5) - 1]`
            /// negative; If we have another 5, `array[abs(5) - 1]` would be negative
            
            let mapIndex = abs(v) - 1
            if array[mapIndex] < 0 {
                return v
            }
            array[mapIndex] *= -1
        }
        
        return -1
    }

}
