//
//  PriorityQueue.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-21.
//

import Foundation

protocol PriorityQueue: CustomStringConvertible {
    associatedtype Element: Comparable

    var count: Int { get }
    
    func peek() -> Element?
    mutating func add(_ element: Element)
    mutating func remove(_ element: Element) -> Bool
    mutating func poll() -> Element?
}
