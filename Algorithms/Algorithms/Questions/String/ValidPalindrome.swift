//
//  ValidPalindrome.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-07.
//

import Foundation

/*
 
 Given a string, determine if it is a palindrome,
 considering only alphanumeric characters and ignoring cases.

 Note: For the purpose of this problem, we define empty string as valid palindrome.

 e.g.
 Input: "A man, a plan, a canal: Panama"
 Output: true

 Input: "race a car"
 Output: false

 */

final class ValidPalindrome {

    // t: O(n), s: O(1)
    //
    // WARNING:
    // ```let leftIndex = string.index(string.startIndex, offsetBy: i)```
    // Seems have a performance issue when looping each char in a super long string

    static func solution(string: String) -> Bool {

        var i = 0
        var j = string.count - 1

        while i < j {
            let leftIndex = string.index(string.startIndex, offsetBy: i)
            let leftChar = string[leftIndex]

            let rightIndex = string.index(string.startIndex, offsetBy: j)
            let rightChar = string[rightIndex]

            guard isValid(char: leftChar) else { i += 1; continue }
            guard isValid(char: rightChar) else { j -= 1; continue }

            if leftChar.lowercased() == rightChar.lowercased() {
                i += 1; j -= 1
            } else {
                return false
            }
        }

        return true
    }

    static func solution2(string: String) -> Bool {

        let charArray = Array(string)
        var i = 0, j = charArray.count - 1

        while i < j {

            let leftChar = charArray[i]
            let rightChar = charArray[j]

            guard isValid(char: leftChar) else { i += 1; continue }
            guard isValid(char: rightChar) else { j -= 1; continue }

            if leftChar.lowercased() == rightChar.lowercased() {
                i += 1; j -= 1
            } else {
                return false
            }
        }
        return true
    }

    static private func isValid(char: Character) -> Bool {
        char.isNumber || char.isLetter
    }
}
