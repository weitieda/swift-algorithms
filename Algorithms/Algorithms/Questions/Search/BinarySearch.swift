//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-15.
//

import Foundation

/*
 
 
 
 
 */

final class BinarySearch {

    // t: O(log(n)), s: O(1)
    static func solution(input: [Int], target: Int) -> Int? {

        var left = 0
        var right = input.count

        while left < right {
            let midIndex = (right + left) / 2
            let midNum = input[midIndex]

            if midNum == target {
                return midIndex
            } else if midNum < target {
                left = midIndex
            } else {
                right = midIndex
            }
        }

        return nil
    }

}
