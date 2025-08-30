//
//  MoveElementToEnd.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-29.
//

import Foundation

/*

 You're given an array of integers and an integer.

 Write a function that moves all instances of that integer in the array to the end of the array and returns the array.
 The function should perform this in place (i.e., it should mutate the input array)
 and doesn't need to maintain the order of the other integers.

 e.g.
 array = [2, 1, 2, 2, 2, 3, 4, 2]
 toMove = 2
 -> [1, 3, 4, 2, 2, 2, 2, 2]  // first 3 numbers' order doesn't matter

 */

enum MoveElementToEnd {
    // t: O(n), s: O(1)
    static func solution(_ array: [Int], _ toMove: Int) -> [Int] {
        var array = array
        var head = 0
        var tail = array.count - 1

        while head < tail {
            if array[head] == toMove {
                while head < tail, array[tail] == toMove {
                    tail -= 1
                }

                (array[head], array[tail]) = (array[tail], array[head])
            }
            head += 1
        }

        return array
    }
}
