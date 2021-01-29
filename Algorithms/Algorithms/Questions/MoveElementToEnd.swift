//
//  MoveElementToEnd.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-29.
//

import Foundation

/*
 You're given an array of integers and an integer. Write a function that moves all instances of that integer in the array to the end of the array and returns the array.
 The function should perform this in place (i.e., it should mutate the input array) and doesn't need to maintain the order of the other integers.
 
 e.g.
 array = [2, 1, 2, 2, 2, 3, 4, 2]
 toMove = 2
 -> [1, 3, 4, 2, 2, 2, 2, 2]  // first 3 nums order doesn't matter
 
 */

final class MoveElementToEnd {
    
    // t: O(n), s: O(1)
    static func solution(_ array: [Int], _ toMove: Int) -> [Int] {
        var result = array
        
        var head = 0
        var tail = result.count - 1
        
        while head < tail {
            if result[head] == toMove {
                while result[tail] == toMove {
                    if head < tail {
                        tail -= 1
                    }
                    break
                }
                result[head] = result[tail]
                result[tail] = toMove
                head += 1
                tail -= 1
            } else {
                head += 1
            }
        }
        
        return result
    }
    
}

