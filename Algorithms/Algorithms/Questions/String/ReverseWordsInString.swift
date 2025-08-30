//
//  ReverseWordsInString.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-14.
//

import Foundation

/*

 e.g.

 string = "London bridge is falling down!"
 -> "down! falling is bridge London"

 */

enum ReverseWordsInString {
    // t: O(n), s: O(1)
    static func solutionSpaceO1(string: String) -> String {
        String(string.reversed())
            .components(separatedBy: .whitespaces)
            .map { String($0.reversed()) }
            .joined(separator: " ")
    }
}
