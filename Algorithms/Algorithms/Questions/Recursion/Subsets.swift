//
//  Subsets.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-03-30.
//

import Foundation

/*

 https://leetcode.com/problems/subsets/

 Given an integer array nums of unique elements, return all possible subsets (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]

 */

enum Subsets {
    // t: O(n*2^n), s: O(2^n)
    static func solutionIterative(array: [Int]) -> [[Int]] {
        var subsets: [[Int]] = [[]]

        for number in array {
            for existingSubset in subsets {
                let newSubset = existingSubset + [number]
                subsets.append(newSubset)
            }
        }

        return subsets
    }

    static func solutionRecursive(array: [Int]) -> [[Int]] {
        Combinations.solution(array: array)
    }
}
