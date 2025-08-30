//
//  SpiralMatrix.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-31.
//

import Foundation

/*

 Given an m x n matrix, return all elements of the matrix in spiral order.

 Input: matrix =
 [[1,2,3],
 [4,5,6],
 [7,8,9]]

 Output: [1,2,3,6,9,8,7,4,5]

 */

enum SpiralMatrix {
    // t: O(n), s: O(n)
    static func solution(_ input: [[Int]]) -> [Int] {
        var result: [Int] = []

        var top = 0
        var right = input[0].count - 1
        var bottom = input.count - 1
        var left = 0

        while left < right, top < bottom {
            for i in stride(from: left, to: right, by: 1) {
                result.append(input[top][i])
            }

            for i in stride(from: top, to: bottom, by: 1) {
                result.append(input[i][right])
            }

            for i in stride(from: right, to: left, by: -1) {
                result.append(input[bottom][i])
            }

            for i in stride(from: bottom, to: top, by: -1) {
                result.append(input[i][left])
            }

            top += 1
            right -= 1
            bottom -= 1
            left += 1
        }

        if left == right {
            for i in stride(from: top, through: bottom, by: 1) {
                result.append(input[i][left])
            }
        } else if top == bottom {
            for i in stride(from: left, through: right, by: 1) {
                result.append(input[top][i])
            }
        }

        return result
    }
}
