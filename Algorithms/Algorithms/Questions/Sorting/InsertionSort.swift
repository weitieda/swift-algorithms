//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-24.
//

import Foundation

/*

 */

final class InsertionSort {

    // t: O(n^2), s: O(1)
    static func solution(array: inout [Int]) -> [Int] {

        for i in 1..<array.endIndex where array[i-1] > array[i] {
            var j = i
            while j > 0, array[j] < array[j-1] {
                array.swapAt(j, j-1)
                j -= 1
            }
        }

        return array
    }

}
