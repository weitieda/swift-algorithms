//
//  SpiralMatrixReversed.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-01.
//

import Foundation

/*

 Given a positive integer n, generate an n x n matrix filled with elements from 1 to n2 in spiral order.
 
 Input: n = 3

 Output:
 [
 [1,2,3],
 [8,9,4],
 [7,6,5]
 ]

 */

final class SpiralMatrixReversed {

    // t: O(n), s: O(n)
    static func solution(_ n: Int) -> [[Int]] {

        let lastNumber = n * n
        
        let numbersInRow = [Int](repeating: lastNumber, count: n)
        var matrix = [[Int]](repeating: numbersInRow, count: n)

        var num = 1

        var top = 0
        var right = n - 1
        var left = 0
        var bottom = n - 1

        while top < bottom && left < right {

            for i in stride(from: left, to: right, by: 1) {
                matrix[top][i] = num
                num += 1
            }

            for i in stride(from: top, to: bottom, by: 1) {
                matrix[i][right] = num
                num += 1
            }

            for i in stride(from: right, to: left, by: -1) {
                matrix[bottom][i] = num
                num += 1
            }

            for i in stride(from: bottom, to: top, by: -1) {
                matrix[i][left] = num
                num += 1
            }

            top += 1
            right -= 1
            bottom -= 1
            left += 1

        }

        return matrix
    }

}
