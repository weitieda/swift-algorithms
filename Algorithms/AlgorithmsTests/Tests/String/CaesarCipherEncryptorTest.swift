//
//  CaesarCipherEncryptorTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-08.
//

import XCTest
@testable import Algorithms

class CaesarCipherEncryptorTest: XCTestCase {

    func test1() {
        let str = "az"
        let sut = CaesarCipherEncryptor.solution(string: str, key: 3)
        XCTAssertEqual(sut, "dc")
    }

    func test2() {
        let str = "az"
        let sut = CaesarCipherEncryptor.solution(string: str, key: 27)
        XCTAssertEqual(sut, "ba")
    }
}
