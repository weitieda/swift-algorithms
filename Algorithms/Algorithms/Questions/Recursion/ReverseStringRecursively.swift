//
//  ReverseStringRecursively.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

/*

  a a
  ab ba
  abc cba
  abcd dcba

 */

final class ReverseStringRecursively {

    // t: O(), s: O()
    static func solution(_ str: String) -> String {
        if str.isEmpty { return "" }
        return String(str.last!) + solution(String(str.dropLast()))
    }

}
