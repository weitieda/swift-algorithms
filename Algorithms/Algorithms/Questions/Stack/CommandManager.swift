//
//  CommandManager.swift
//  Algorithms
//
//  Created by Tieda Wei on 2025-09-18.
//

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
        text.removeLast(count)
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
        let cmd = command
        cmd.execute()
        undoStack.append(cmd)
        redoStack.removeAll()
    }

    func undo() {
        guard let cmd = undoStack.popLast() else { return }
        cmd.undo()
        redoStack.append(cmd)
    }

    func redo() {
        guard let cmd = redoStack.popLast() else { return }
        cmd.execute()
        undoStack.append(cmd)
    }
}
