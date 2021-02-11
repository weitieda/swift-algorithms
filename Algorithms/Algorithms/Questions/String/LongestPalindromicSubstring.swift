//
//  LongestPalindromicSubstring.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-10.
//

import Foundation

/*
 
 Write a function that, given a string, returns its longest palindromic substring.
 
 A palindrome is defined as a string that's written the same forward and backward. Note that single-character strings are palindromes.

 You can assume that there will only be one longest palindromic substring.

 e.g.
 = "abaxyzzyxf"
 -> "xyzzyx"

 */

final class LongestPalindromicSubstring {

    // t: O(), s: O()
    static func solution(string: String) -> String {
        if string.count <= 1 { return string }

        var result = ""

        for i in 0..<string.count {
            // abba
            if i+1 < string.count {
                let palindromeString = getPalindromeString(input: string, left: i, right: i+1)
                updateResultIfNeeded(string: palindromeString, result: &result)
            }

            // aba
            if i+2 < string.count {
                let palindromeString = getPalindromeString(input: string, left: i, right: i+2)
                updateResultIfNeeded(string: palindromeString, result: &result)
            }
        }

        return result
    }

    static private func updateResultIfNeeded(string: String, result: inout String) {
        if string.count >= result.count {
            result = string
        }
    }

    private static func getPalindromeString(input: String, left: Int, right: Int) -> String {
        var result = ""

        var leftIndex = left
        var rightIndex = right

        let charArray = Array(input)

        while leftIndex >= 0 && rightIndex < charArray.count {
            if charArray[leftIndex] == charArray[rightIndex] {
                leftIndex -= 1
                rightIndex += 1
            } else {
                break
            }
        }

        result = String(charArray[leftIndex+1..<rightIndex])

        return result
    }



}
