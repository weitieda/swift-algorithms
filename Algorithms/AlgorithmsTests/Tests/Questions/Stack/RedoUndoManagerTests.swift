//
//  RedoUndoManagerTests.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2025-09-16.
//

@testable import Algorithms
import XCTest

final class RedoUndoManagerTests: XCTestCase {
    func test_append() {
        let t = TextBuffer()
        let a = AppendText(text: t, new: "abc")
        a.execute()
        XCTAssertEqual(t.text, "abc")
        a.undo()
        XCTAssertEqual(t.text, "")
    }
}
