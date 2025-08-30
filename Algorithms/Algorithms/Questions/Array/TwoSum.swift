//
//  TwoSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-27.
//

import Foundation

enum TwoSum {
    static func solution(input: [Int], target: Int) -> [Int] {
        var numberHasSeen = [Int: Int]()

        for index in input.indices {
            let currentNumber = input[index]
            if let needNumberIndex = numberHasSeen[target - currentNumber] {
                return [index, needNumberIndex]
            }
            numberHasSeen[currentNumber] = index
        }

        return []
    }
}
