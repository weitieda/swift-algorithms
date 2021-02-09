//
//  CaesarCipherEncryptor.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-08.
//

import Foundation

/*
 
 Given a non-empty string of lowercase letters and a non-negative integer
 representing a key, write a function that returns a new string obtained
 by shifting every letter in the input string by k positions in the alphabet, where k is the key.
 
 Note that letters should "wrap" around the alphabet; in other words, the letter z
 shifted by one returns the letter a

 e.g.
 string = "xyz"
 key = 2

 -> zab

 */

final class CaesarCipherEncryptor {

    // t: O(n), s: O(1)
    static func solution(string: String, key: Int) -> String {

        let charAIndex = Int(UnicodeScalar("a").value)
        let charZIndex = Int(UnicodeScalar("z").value)
        let allLetterCount = charZIndex - charAIndex + 1

        let resultUTF16 = string.utf16.map { index -> Character in
            let currentIndex = Int(index)
            var newIndex = currentIndex + key%allLetterCount
            if newIndex > charZIndex {
                newIndex -= allLetterCount
            }
            let c = UnicodeScalar(newIndex)!
            return Character(c)
        }

        return String(resultUTF16)
    }

}
