//
//  Compare.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

func isSame2DArray<T: Equatable>(_ lhs: [[T]], _ rhs: [[T]]) -> Bool {
    if lhs.count != rhs.count {return false}

    for i in 0..<lhs.count {
        if !rhs.contains(lhs[i]) {
            return false
        }
    }

    return true
}


func isSameArrayIgnoreOrder<T: Comparable>(_ lhs: [T], _ rhs: [T]) -> Bool {
    lhs.sorted() == rhs.sorted()
}
