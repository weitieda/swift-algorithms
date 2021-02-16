//
//  ProductSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-16.
//

import Foundation

/*
 
 Write a function that takes in a "special" array and
 returns its product sum.
 A "special" array is a non-empty array that contains
 either integers or other "special" arrays.
 The product sum of a "special" array is the sum of its
 elements, where "special" arrays inside it are summed
 themselves and then multiplied by their level of depth.

 The depth of a "special" array is how far nested it is.
 For instance, the depth of [] is 1; the depth of the
 inner array in [[]] is 2; the depth of the innermost
 array in [[[]]] is 3.

 Therefore, the product sum of [x, y] is x + y; the product
 sum of [x, [y, z] ] is x + 2 * (y + z);
 the product sum of [x, [y, [z]]] is x + 2 * (y + 3z).

 e.g.
 array = [5, 2, [7, -1], 3, [6, [-13, 8], 4]]
 -> 12 // 5 + 2 + 2 * (7 - 1) + 3 + 2 * (6 + 3 * (-13 + 8) + 4)

 */

final class ProductSum {

    // t: O(n), s: O(depth)
    static func solution(_ array: [Any]) -> Int {
        return productSum(array)
    }

    private static func productSum(_ array: [Any], depth: Int = 1) -> Int {
        var sum = 0
        for value in array {
            if let v = value as? Int {
                sum += v
            } else if let v = value as? [Any] {
                sum += productSum(v, depth: depth + 1)
            }
        }
        return sum * depth
    }

}
