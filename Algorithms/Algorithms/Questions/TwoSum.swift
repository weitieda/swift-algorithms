//
//  TwoSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-27.
//

import Foundation

public class TwoSum {
    public static func run(input: [Int], target: Int) -> [Int] {
        
        var numberHasSeen = Set<Int>()
        
        for number in input {
            let needNumber = target - number
            if numberHasSeen.contains(needNumber) {
                return [needNumber, number]
            } else {
                numberHasSeen.insert(number)
            }
        }
        
        return []
    }
}
