//
//  CaesarCipherEncryptorTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-08.
//

@testable import Algorithms
import XCTest

class CaesarCipherEncryptorTest: XCTestCase {
    func test() {
        [
            ("az", 3, "dc"),
            ("az", 27, "ba"),
        ].forEach { str, key, result in
            expect(result, when: CaesarCipherEncryptor.solution(string: str, key: key))
        }
    }
}
