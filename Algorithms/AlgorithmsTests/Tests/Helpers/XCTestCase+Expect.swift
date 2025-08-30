//
//  XCTestCase+Expect.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-27.
//

import XCTest

extension XCTestCase {
    func expect<T: Equatable>(_ expectedResult: T,
                              when expression: @escaping @autoclosure () -> T,
                              timeout: TimeInterval = 0.01,
                              file: StaticString = #filePath,
                              line: UInt = #line)
    {
        let fileName = String(describing: type(of: self))
        let expectation = XCTestExpectation(description: "\(fileName) Expectation)")

        var expressionResult: T?
        DispatchQueue(label: fileName).async {
            expressionResult = expression()
            expectation.fulfill()
        }

        let result = XCTWaiter().wait(for: [expectation], timeout: timeout)

        switch result {
        case .completed:
            XCTAssertEqual(try XCTUnwrap(expressionResult), expectedResult, file: file, line: line)
        case .timedOut:
            XCTFail("Time out: \(timeout)s", file: file, line: line)
        default:
            XCTFail("Expected completed/timeout, but received \(result)", file: file, line: line)
        }
    }
}
