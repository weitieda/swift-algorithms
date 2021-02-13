//
//  GroupAnagrams.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-12.
//

import Foundation

/*

 https://leetcode.com/problems/group-anagrams

 Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase,
 typically using all the original letters exactly once.
 
 Example 1:
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

 Example 2:
 Input: strs = [""]
 Output: [[""]]

 Example 3:
 Input: strs = ["a"]
 Output: [["a"]]

 Constraints:

 1 <= strs.length <= 104
 0 <= strs[i].length <= 100
 strs[i] consists of lower-case English letters.
 
 */

final class GroupAnagrams {

    // t: O(strs.count * longestWord.count), s: O(strs.count * longestWord.count)
    static func solution(strs: [String]) -> [[String]] {

        typealias CharCount = [Character: Int]

        var dictionary = [CharCount: [String]]()

        strs.forEach { word in
            var charCount = CharCount()

            word.forEach { char in
                charCount[char, default: 0] += 1
            }

            dictionary[charCount, default: []].append(word)
        }

        return Array(dictionary.values)
    }
}
