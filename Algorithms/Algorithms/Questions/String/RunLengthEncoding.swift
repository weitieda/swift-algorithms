//
//  RunLengthEncoding.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-11.
//

import Foundation

/*
 
 Write a function that takes in a non-empty string and returns its run-length encoding.

 From Wikipedia, "run-length encoding is a form of lossless data compression in which runs of data are stored as a single data value and count, rather than as the original run."
 For this problem, a run of data is any sequence of consecutive, identical characters. So the run

 To make things more complicated, however, the input string can contain all sorts of special characters, including numbers.
 And since encoded data must be decodable, this means that we can't naively run-length-encode long runs. For example, the run

 e.g.

 = "AAAAAAAAAAAAABBCCCCDD"
 -> "9A4A2B4C2D"
 
 */

final class RunLengthEncoding {

    // t: O(n), s: O(n)
    static func solution(string: String) -> String {
        var result = ""

        let charArray = Array(string)

        var count = 1

        for i in 1..<charArray.count {
            if charArray[i] == charArray[i-1] {
                if count == 9 {
                    result += "9\(charArray[i])"
                    count = 1
                } else {
                    count += 1
                }
            } else {
                result += "\(count)\(String(charArray[i-1]))"
                count = 1
            }
        }
        result += "\(count)\(String(charArray.last!))"
        return result
    }

}
