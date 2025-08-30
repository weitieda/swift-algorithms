//
//  NthFibonacci.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-14.
//

import Foundation

/*

 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987...

 */

enum NthFibonacci {
    // t: O(2^n), s: O(n)
    static func solution2toN(n: Int) -> Int {
        if n == 1 { return 0 }
        if n == 2 { return 1 }
        return solution2toN(n: n - 1) + solution2toN(n: n - 2)
    }

    // t: O(n), s: O(n)
    static func solutionMemoization(n: Int) -> Int {
        var memoization = [1: 0, 2: 1]
        return memoizationFib(n: n, memoization: &memoization)
    }

    private static func memoizationFib(n: Int, memoization: inout [Int: Int]) -> Int {
        if let cachedValue = memoization[n] { return cachedValue }

        let newValue = memoizationFib(n: n - 1, memoization: &memoization) +
            memoizationFib(n: n - 2, memoization: &memoization)

        memoization[n] = newValue

        return newValue
    }

    // t: O(n), s: O(1)
    static func solutionIteration(n: Int) -> Int {
        var prevValues = (0, 1)

        if n == 1 { return prevValues.0 }
        if n == 2 { return prevValues.1 }

        var count = 3

        while count < n {
            let next = prevValues.0 + prevValues.1
            prevValues.0 = prevValues.1
            prevValues.1 = next
            count += 1
        }

        return prevValues.0 + prevValues.1
    }
}
