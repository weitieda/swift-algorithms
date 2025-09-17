//
//  RedoUndoManagerTests.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2025-09-16.
//

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
	
	func test_() {
		
	}
}

protocol Command {
    func execute()
    func undo()
}

final class TextBuffer {
    private(set) var text: String = ""

    func append(text: String) {
        self.text.append(contentsOf: text)
    }

    func removeLast(_ count: Int) {
		self.text.removeLast(count)
    }
}

final class AppendText: Command {
    let text: TextBuffer
    let new: String

    init(text: TextBuffer, new: String) {
        self.text = text
        self.new = new
    }

    func execute() {
        text.append(text: new)
    }

    func undo() {
        text.removeLast(new.count)
    }
}


final class CommandManager {
    private var undoStack: [any Command] = []
    private var redoStack: [any Command] = []

    var canUndo: Bool { !undoStack.isEmpty }
    var canRedo: Bool { !redoStack.isEmpty }

    func perform(_ command: some Command) {
        var cmd = command
        cmd.execute()
        undoStack.append(cmd)
        redoStack.removeAll()
    }

    func undo() {
        guard var cmd = undoStack.popLast() else { return }
        cmd.undo()
        redoStack.append(cmd)
    }

    func redo() {
        guard var cmd = redoStack.popLast() else { return }
        cmd.execute()
        undoStack.append(cmd)
    }
}
