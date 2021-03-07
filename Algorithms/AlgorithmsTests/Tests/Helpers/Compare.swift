//
//  Compare.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

func isSame2DArray<T: Comparable>(_ lhs: [[T]], _ rhs: [[T]]) -> Bool {
    if lhs.count != rhs.count {return false}
    
    var l = lhs
    var r = rhs
    for i in lhs.indices {
        l[i].sort()
        r[i].sort()
    }

    for i in 0..<lhs.count {
        if !r.contains(l[i]) {
            return false
        }
    }

    return true
}


func isSameArrayIgnoreOrder<T: Comparable>(_ lhs: [T], _ rhs: [T]) -> Bool {
    lhs.sorted() == rhs.sorted()
}
