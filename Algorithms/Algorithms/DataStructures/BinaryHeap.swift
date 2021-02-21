//
//  BinaryHeap.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-20.
//

import Foundation

protocol PriorityQueue {
    associatedtype Element: Comparable

    var count: Int { get }
    var highestPriorityElement: Element? { get }
    mutating func add(_ element: Element)
    mutating func remove(_ element: Element) -> Element
}

struct BinaryHeap<Element: Comparable>: PriorityQueue {

    var count: Int { elements.count }
    var highestPriorityElement: Element? { elements.first }

    private var elements = [Element]()

    private var lastElementIndex: Int { elements.endIndex - 1}

    enum HeapType {
        case min, max
    }

    private let type: HeapType

    init(type: HeapType = .min, elements: [Element] = []) {
        self.type = type
        elements.forEach { add($0) }
    }

    // O(log(n))
    mutating func add(_ element: Element) {
        elements.append(element)

        shiftUp(from: lastElementIndex)
    }

    mutating func remove(_ element: Element) -> Element {
        elements[0]
    }

    // MARK: - Private

    private func leftChildIndexOf(parent: Int) -> Int {
        2 * parent + 1
    }

    private func rightChildIndexOf(parent: Int) -> Int {
        2 * parent + 2
    }

    private func parentIndexOf(child: Int) -> Int {
        (child - 1) / 2
    }

    private func isChildHigherPriority(_ childIndex: Int, _ parentIndex: Int) -> Bool {
        type == .min ? elements[childIndex] < elements[parentIndex] : elements[childIndex] > elements[parentIndex]
    }

    // O(log(n))
    private mutating func shiftUp(from index: Int) {
        var childIndex = index
        var parentIndex = parentIndexOf(child: childIndex)

        while childIndex > 0 && isChildHigherPriority(childIndex, parentIndex) {
            elements.swapAt(childIndex, parentIndex)
            childIndex = parentIndex

            parentIndex = parentIndexOf(child: childIndex)
        }
    }

    private mutating func shiftDown(from index: Int) {

    }


//
//    private mutating func heapify(_ elements: [Element]) {
//        for i in stride(from: elements.count / 2 - 1, through: 0, by: -1) {
//            shiftDown(from: i)
//        }
//    }
}
