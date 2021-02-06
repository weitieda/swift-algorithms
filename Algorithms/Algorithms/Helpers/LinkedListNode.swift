//
//  LinkedListNode.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-06.
//

import Foundation

class LinkedListNode<T: Comparable> {
    var value: T
    var next: LinkedListNode?

    init(value: T, next: LinkedListNode? = nil) {
        self.value = value
        self.next = next
    }
}
