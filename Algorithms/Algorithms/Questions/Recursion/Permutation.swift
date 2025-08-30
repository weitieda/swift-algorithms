//
//  Permutation.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

/*

 [1,2,3]

 ->

 [
    [1,2,3],
    [1,3,2],
    [2,1,3],
    [2,3,2],
    [3,1,2],
    [3,2,1],
 ]

 */

enum Permutation {
    ///                               []
    /// 1                             [1]
    /// 12           [1,2]                           [2,1]
    /// 123    [3,1,2] [1,3,2] [1,2,3]          [3,2,1][2,3,1][2,1,3]
    ///
    /// Insert new number at each index(0...count) of prev permutation
    ///
    /// t: O(n! * n * n), s: O(n! * n)
    static func solution(_ array: [Int]) -> [[Int]] {
        func getPermutation(of array: [Int]) -> [[Int]] {
            if array.isEmpty { return [[]] }

            var allPerms = [[Int]]()

            let last = array.last!
            let rest = Array(array.dropLast())

            let prevPerms = getPermutation(of: rest)
            for perm in prevPerms {
                for i in 0 ... perm.count {
                    var cp = perm
                    cp.insert(last, at: i)
                    allPerms.append(cp)
                }
            }

            return allPerms
        }

        return getPermutation(of: array)
    }

    /// t: O(n! * n), s: O(n! * n)
    static func solution2(_ array: [Int]) -> [[Int]] {
        var result = [[Int]]()

        var nums = array

        func dfs(baseIndex: Int) {
            if baseIndex == array.count {
                result.append(nums)
                return
            }

            for i in baseIndex ..< array.count {
                nums.swapAt(i, baseIndex)
                dfs(baseIndex: baseIndex + 1)
                nums.swapAt(i, baseIndex)
            }
        }

        dfs(baseIndex: 0)

        return result
    }
}
