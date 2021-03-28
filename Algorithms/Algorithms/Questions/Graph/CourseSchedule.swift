//
//  CourseSchedule.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-03-21.
//

import Foundation

/*
 https://leetcode.com/problems/course-schedule-ii/
 */

final class CourseSchedule {
    static func fib(_ i: Int) -> Int {
        if i == 0 || i == 1 {return 1}
        return fib(i-1) + fib(i-2)
    }
    // t: O(), s: O()
    static func solution(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {

        // index->course, value->prerequistesCount
        var graph = Array(repeating: 0, count: numCourses)
        for pre in prerequisites {
            graph[pre[0]] += 1
        }
        
        var readyToTake = [Int]()
        for i in 0..<numCourses where graph[i] == 0 {
            readyToTake.append(i)
        }
        
        var path = [Int]()
        while !readyToTake.isEmpty {
            let course = readyToTake.removeLast()
            path.append(course)
            for pair in prerequisites where pair[1] == course {
                graph[pair[0]] -= 1
                if graph[pair[0]] == 0 {
                    readyToTake.append(pair[0])
                }
            }
        }
        
        return path.count == numCourses ? path : []
    }

}
