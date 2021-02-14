//
//  NthFibonacci.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-14.
//

import Foundation

/*
 
 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987...

 */

final class NthFibonacci {

    // t: O(2^n), s: O(1)
    static func solutionTime2n(n: Int) -> Int {
        if n == 1 { return 0 }
        if n == 2 { return 1 }
        return solutionTime2n(n: n - 1) + solutionTime2n(n: n - 2)
    }

    // t: O(n), s: O()
    static func solutionOnOn(n: Int) -> Int {
        if n == 1 { return 0 }
        if n == 2 { return 1 }
        return solutionTime2n(n: n - 1) + solutionTime2n(n: n - 2)
    }

}
