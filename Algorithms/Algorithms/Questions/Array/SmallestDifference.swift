//
//  SmallestDifference.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-29.
//

import Foundation

/*
 
 Write a function that takes in two non-empty arrays of integers,
 finds the pair of numbers (one from each array) whose absolute difference is closest to zero,
 and returns an array containing these two numbers, with the number from   the first array in the first position.
 
 Note that the absolute difference of two integers is the distance between them on the real number line.
 For example, the absolute difference of -5 and 5 is 10, and the absolute difference of -5 and -4 is 1.
 
 You can assume that there will only be one pair of numbers with the smallest difference.
 
 
 arrayTwo = [-1, 5, 10, 20, 28, 3]
 arrayOne = [26, 134, 135, 15, 17]
 -> [28, 26]
 
 */

final class SmallestDifference {

    // t: O(nlog(n) + mlog(m)), s: O(1)
    static func solution(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {

        arrayOne.sort()
        arrayTwo.sort()

        var pair = [Int]()
        var current = Int.max
        var smallestDiff = Int.max

        var indexOne = 0
        var indexTwo = 0

        while indexOne < arrayOne.count && indexTwo < arrayTwo.count {
            let firstNum = arrayOne[indexOne]
            let secondNum = arrayTwo[indexTwo]

            current = abs(firstNum - secondNum)

            if firstNum < secondNum {
                indexOne += 1
            } else if firstNum > secondNum {
                indexTwo += 1
            } else {  // == 0
                return [firstNum, secondNum]
            }

            if current < smallestDiff {
                smallestDiff = current
                pair = [firstNum, secondNum]
            }
        }

        return pair
    }

}
