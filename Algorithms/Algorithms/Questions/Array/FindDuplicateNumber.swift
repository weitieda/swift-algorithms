//
//  FindDuplicateNumber.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-05.
//

import Foundation

/*

 Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

 There is only one repeated number in nums, return this repeated number.
 
 Example 1:
 Input: nums = [1,3,4,2,2]
 Output: 2

 Example 2:
 Input: nums = [3,1,3,4,2]
 Output: 3

 Example 3:
 Input: nums = [1,1]
 Output: 1

 Example 4:
 Input: nums = [1,1,2]
 Output: 1
 
 */

final class FindDuplicateNumber {

    /*

     Solution 1:
     Sort then compare adjacent number
     t: O(nLog(n)), s: O(1)

     Solution 2:
     Use a set<Int> to track seen value
     t: O(n), s: O(n)

     Solution 3:
     If allow mutating, map seen value to index,
     convert that value to negative, same as question: `FirstDuplicateValue`
     t: O(n), s: O(1)

     */

    // t: O(nlog(n)), s: O(1)
    static func solution(array: [Int]) -> Int {

        // number range [1, n]
        var left = 1
        var right = array.count - 1

        while left < right {
            let middle = (left + right)/2
            let count = array.filter { $0 <= middle }.count
            if count <= middle {
                left = middle + 1
            } else {
                right = middle
            }
        }

        return left
    }

    /*

     https://leetcode.com/problems/find-the-duplicate-number/discuss/543300/Swift-solution-with-explanation

     Why Using Cycle Detection

     According to the description of this problem, we knowing that the value of the elements might between 1 to count.

     So the hint tells as we might be ok to see this array as a kind of flow. Base on this,
     we also can say the value of an elements is represent the next index we can go.

     For example, if we have a given array [1, 3, 4, 2, 3]

     +-----+-----+-----+-----+-----+
     | [0] | [1] | [2] | [3] | [4] |
     +-----+-----+-----+-----+-----+
     |  1  |  3  |  4  |  2  |  3  |
     +-----+-----+-----+-----+-----+
     We started from [0], we found that we start from 1, then we got 3 at [1], 2 at [3] and so on.

     And let's trying to redraw this array into a simple flow. (I am not sure we can call it a state machine or not lol)


     +---+    +---+    +---+    +---+
     | 1 | -> | 3 | -> | 2 | -> | 4 |
     +---+    +---+    +---+    +---+
                ^                 |
                |                 |
                +-----------------+

     Then we got a flow has a cycle. And that's the reason why we can use Floyd to solve this problem.
     */

    // t: O(n), s: O(1)
    static func solution2(array: [Int]) -> Int {
        
        var slow = array[0]
        var fast = array[0]

        repeat {
            slow = array[slow]
            fast = array[array[fast]]
        } while slow != fast


        slow = array[0]

        while slow != fast {
            slow = array[slow]
            fast = array[fast]
        }

        return slow
    }
}
