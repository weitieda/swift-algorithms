//
//  KMostFrequentString.swift
//  Algorithms
//
//  Created by Tieda Wei on 2025-08-31.
//

import DataStructure

/*

 Find the k most frequently occurring strings in an array,
 and return them sorted by frequency in descending order.
 If two strings have the same frequency, sort them in lexicographical order.

 Example:
 Input: strs = ['go', 'coding', 'byte', 'byte', 'go', 'interview', 'go'], k = 2
 Output: ['go', 'byte']
 Explanation: The strings "go" and "byte" appear the most frequently, with frequencies of 3 and 2, respectively.

 Constraints:
 k ≤ n, where n denotes the length of the array.

 */

enum KMostFrequentString {
    struct Entry: Equatable, Comparable {
        let string: String
        let frequency: Int

        static func < (lhs: KMostFrequentString.Entry, rhs: KMostFrequentString.Entry) -> Bool {
            if lhs.frequency != rhs.frequency {
                return lhs.frequency < rhs.frequency
            } else {
                return lhs.string < rhs.string
            }
        }
    }

    static func solution(_ strings: [String], _ k: Int) -> [String] {
        let elements = strings
            .reduce(into: [:]) { count, string in
                count[string, default: 0] += 1
            }
            .map { Entry(string: $0.key, frequency: $0.value) }

        var maxHeap = BinaryHeap<Entry>(type: .max, elements: elements)

        var result: [Entry] = []
        for _ in 0 ..< k {
            result.append(maxHeap.poll()!)
        }

        return result.map(\.string)
    }

    static func makeDictionary(_ strings: [String]) -> [String: Int] {
        strings.reduce(into: [:]) { count, string in
            count[string, default: 0] += 1
        }
    }
}
