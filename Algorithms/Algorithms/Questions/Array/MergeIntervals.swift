//
//  MergeIntervals.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-04-03.
//

import Foundation

/*
 
 Leetcode 56
 
 https://leetcode.com/problems/merge-intervals/
 
 Example 1:
 Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
 
 Example 2:
 Input: intervals = [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 
 */

final class MergeIntervals {

    // t: O(n), s: O(1)
    static func solution(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count < 2 else { return intervals }
        
        let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] })
        
        var mergedIntervals = [sortedIntervals.first!]
        
        for current in sortedIntervals {
            let prevStart = mergedIntervals.last![0]
            let prevEnd = mergedIntervals.last![1]
            
            let currentStart = current[0]
            let currentEnd = current[1]

            if prevEnd >= currentStart {
                let newInterval = [prevStart, max(prevEnd, currentEnd)]
                mergedIntervals[mergedIntervals.count-1] = newInterval
            } else {
                mergedIntervals.append(current)
            }
        }
        
        return mergedIntervals
    }

}
