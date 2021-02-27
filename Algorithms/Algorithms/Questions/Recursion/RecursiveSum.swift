//
//  RecursiveSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-26.
//

import Foundation

/*
 
 Calculate sum of give array of int by recursion

 */

/// https://youtu.be/wRH2I6IN4BE

final class RecursiveSum {

    ///
    /// [1, 8, 4, -1]
    ///
    /// sum([]) = 0
    /// sum([1]) = 1
    /// sum([1, 8]) = 9
    /// sum([1, 8, 4]) = 13
    /// sum([1, 8, 4, -1] = 12
    ///
    /// t: O(n^2), s: O(n)
    /// array.dropFirst() is O(n)
    static func sum(array: [Int]) -> Int {
        if array.isEmpty { return 0 }
        let numsExceptFirst = Array(array.dropFirst())
        return array[0] + sum(array: numsExceptFirst)
    }

    /// [1, 8, 4, -1]
    ///
    /// Kind of like iteration way: collecting each number from `index 0`, then use `index + 1`
    /// to collect next number. Once running index is out of bound(`index == array.count`),
    /// we know we've collected all the numbers then start to return and pop call stack
    ///
    /// i = 0: a[0] + sumFaster(1)              = 1 + 8 + 4 + (-1) + 0
    /// i = 1: a[1] + sumFaster(2)              = 8 + 4 + (-1) + 0
    /// i = 2: a[2] + sumFaster(3)              = 4 + (-1) + 0
    /// i = 3: a[3] + sumFaster(4)              = (-1) + 0
    ///
    /// t: O(n), s: O(n)
    static func sumRunningIndex(array: [Int], index: Int = 0) -> Int {
        if index == array.count { return 0 }
        return array[index] + sumRunningIndex(array: array, index: index + 1)
    }

}
