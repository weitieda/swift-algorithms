//
//  Combinations.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

/*
 
 [a, b, c]

 ->

 [
    [],
    [a],
    [b],
    [c],
    [a, b],
    [b, c],
    [a, c],
    [a, b, c]
 ]
 
 */

///
///                         []
///     a         []                  [a]                // left node: don't add a; right node: add a
///     b     []       [b]        [a]       [a,b]        // left node: don't add b; right node: add b
///     c   []  [c]  [b][b,c]   [a][a,c]  [a,b] [a, b, c]
///
/// Every time add a new letter, do two things:
/// 1. Keep whatever already have
/// 2. Add new letter to each element of current
///
/// call stack:
/// solution([a,b,c])    -> [[], [c], [b], [c,b], [a], [a,c], [a,b], [a,b,c]]
/// solution([b,c])      -> [[], [c], [b], [c,b]] // keep [[],[c]] then add b to [] and [c]
/// solution([c])        -> [[], [c]]  // keep []; add [c]
/// solution([])         -> [[]]
///
final class Combinations {

    /// t: O(2^n)  growing like Binary Tree
    /// s: O(n^2)  call stack x n, each call stack `let restLetters = Array(array[1...])`
    static func solution<T: Equatable>(array: [T]) -> [[T]] {
        if array.isEmpty { return [[]] }

        let firstLetter = array.first!
        let restLetters = Array(array.dropFirst())

        // left node
        let combsWithoutFirstLetter = solution(array: restLetters)

        // right node: add first letter in each left node
        let combsWithFirst = combsWithoutFirstLetter.map { comb -> [T] in
            var c = comb
            c.append(firstLetter)
            return c
        }

        return combsWithoutFirstLetter + combsWithFirst
    }

}
