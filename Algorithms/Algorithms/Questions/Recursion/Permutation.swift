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

final class Permutation {
    ///                               []
    /// 1                             [1]
    /// 12           [1,2]                           [2,1]
    /// 123    [3,1,2] [1,3,2] [1,2,3]          [3,2,1][2,3,1][2,1,3]
    ///
    /// Insert new number at each index(0...count) of prev permutation
    ///
    /// t: O(n!), s: O(n^2)
    static func solution(_ array: [Int]) -> [[Int]] {
        if array.isEmpty { return [[]] }

        let last = array.last!
        let rest = Array(array.dropLast())

        var allPerms = [[Int]]()

        let prevPerms = solution(rest)
        prevPerms.forEach { (perm) in
            for i in (0...perm.count) {
                var cp = perm
                cp.insert(last, at: i)
                allPerms.append(cp)
            }
        }

        return allPerms
    }
}
