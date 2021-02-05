//
//  BST.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-04.
//

import Foundation

final class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
}
