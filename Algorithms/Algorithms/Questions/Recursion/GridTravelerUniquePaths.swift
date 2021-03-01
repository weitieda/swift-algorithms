//
//  GridTravelerUniquePaths.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-28.
//

import Foundation

/*

 https://leetcode.com/problems/unique-paths/

 A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

 The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

 How many possible unique paths are there?

 Example 1:
 Input: m = 3, n = 7
 Output: 28

 Example 2:
 Input: m = 3, n = 2
 Output: 3
 Explanation:
 From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
 1. Right -> Down -> Down
 2. Down -> Down -> Right
 3. Down -> Right -> Down

 Example 3:
 Input: m = 7, n = 3
 Output: 28

 Example 4:
 Input: m = 3, n = 3
 Output: 6
 
 */

final class GridTravelerUniquePaths {

    private struct Key: Hashable {
        let m: Int
        let n: Int
    }

    /// t: O(m*n), s: O(m+n)
    static func solution(_ m: Int, _ n: Int) -> Int {
        var memo = [Key: Int]()

        func dfs(_ m: Int, _ n: Int) -> Int {
            let key = Key(m: m, n: n)
            if let cached = memo[key] {
                return cached
            }
            if m == 1 || n == 1 { return 1 }
            let new = dfs(m-1, n) + dfs(m, n-1)
            memo[key] = new
            return new
        }

        return dfs(m, n)
    }
}
