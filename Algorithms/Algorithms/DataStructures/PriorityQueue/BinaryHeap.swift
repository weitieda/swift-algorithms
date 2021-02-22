//
//  BinaryHeap.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-20.
//

import Foundation

struct BinaryHeap<Element: Comparable>: PriorityQueue {
    var count: Int { elements.count }
    var isEmpty: Bool { elements.isEmpty }

    private(set) var elements = [Element]()
    private var lastElementIndex: Int { elements.count - 1 }
    private let type: HeapType

    init(type: HeapType = .min, elements: [Element] = []) {
        self.type = type
        elements.forEach { add($0) }
    }

    // O(1)
    func peek() -> Element? { elements.first }
    
    // O(log(n))
    mutating func add(_ element: Element) {
        elements.append(element)
        shiftUp(from: lastElementIndex)
    }

    // O(log(n))
    mutating func remove(_ element: Element) -> Bool {
        guard !isEmpty else { return false }
        guard let index = elements.firstIndex(of: element) else { return false }
        remove(at: index)
        return true
    }

    // O(log(n))
    mutating func poll() -> Element? {
        guard !isEmpty else { return nil }
        elements.swapAt(0, lastElementIndex)
        defer { shiftDown(from: 0) }
        return elements.removeLast()
    }

    // O(n)
    mutating func clear() {
        elements.removeAll()
    }

    // MARK: - Private

    private mutating func remove(at index: Int) {
        elements.swapAt(index, lastElementIndex)
        elements.removeLast()

        shiftDown(from: index)
        shiftUp(from: index)
    }

    // O(log(n))
    private mutating func shiftUp(from index: Int) {
        var childIndex = index
        var parentIndex = self.parentIndex(of: childIndex)

        while childIndex > 0 && isLeftElementHasHigherPriority(childIndex, parentIndex) {
            elements.swapAt(childIndex, parentIndex)
            childIndex = parentIndex

            parentIndex = self.parentIndex(of: childIndex)
        }
    }

    // O(log(n))
    private mutating func shiftDown(from index: Int) {
        var parentIndex = index

        while true {
            var candidateChildIndex = parentIndex
            candidateChildIndex = findHigherPriorityElementIndex(of: parentIndex)
            if candidateChildIndex == parentIndex { break }

            elements.swapAt(parentIndex, candidateChildIndex)
            parentIndex = candidateChildIndex
        }
    }

    private func findHigherPriorityElementIndex(of parentIndex: Int) -> Int {

        let leftIndex = leftChildIndex(of: parentIndex)
        let rightIndex = rightChildIndex(of: parentIndex)

        var candidateChildIndex = parentIndex

        if leftIndex < count && isLeftElementHasHigherPriority(leftIndex, candidateChildIndex) {
            candidateChildIndex = leftIndex
        }
        if rightIndex < count && isLeftElementHasHigherPriority(rightIndex, candidateChildIndex) {
            candidateChildIndex = rightIndex
        }

        return candidateChildIndex
    }

    private func leftChildIndex(of parent: Int) -> Int {
        2 * parent + 1
    }

    private func rightChildIndex(of parent: Int) -> Int {
        2 * parent + 2
    }

    private func parentIndex(of child: Int) -> Int {
        (child - 1) / 2
    }

    private func isLeftElementHasHigherPriority(_ lhs: Int, _ rhs: Int) -> Bool {
        type == .min ? elements[lhs] < elements[rhs] : elements[lhs] > elements[rhs]
    }
}

extension BinaryHeap: CustomStringConvertible {
    var description: String { elements.description }
}

extension BinaryHeap {
    enum HeapType {
        case min, max
    }
}
