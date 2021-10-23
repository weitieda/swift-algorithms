import Foundation

let fm = FileManager.default

let questionPath = "../Algorithms/Algorithms/Questions"
let dirEnum = fm.enumerator(atPath: questionPath)

var questionsDict = [String: [String]]()

while let file = dirEnum?.nextObject() as? String {
    if file.hasSuffix(".swift") && !file.hasPrefix("Helper") {
        var comp = file.components(separatedBy: "/")
        let category = comp.removeFirst()
        let fileName = comp.removeFirst()
        questionsDict[category, default: []].append(fileName)
    }
}

let header = """
# Algorithms

![banner](asset/banner.jpeg)

Solve [LeetCode](https://www.leetcode.com) and [HackerRank](https://www.hackerrank.com) algorithm problems in `Swift`

- *Swifty* in mind
- Covered by `Unit Test` with timeout validation

🧑🏻‍💻 Work in progress...

## Question List

"""

let bottomSection = """
## Author

[Tieda Wei](https://tiedawei.com)

## License

Algorithms is available under the MIT license. See [the LICENSE](LICENSE) for more information.
"""

var questionList = ""

questionsDict.keys.sorted().forEach {
    let title = "### **\($0)**\n"
    questionList += title
    for file in questionsDict[$0]! {
        let name = file.components(separatedBy: ".")[0]
        questionList += "[\(name)](Algorithms/Algorithms/Questions/\($0)/\(file))\n\n"
        
    }
    questionList += "\n"
}

let url = URL(fileURLWithPath: "../README.md")
let result = header + questionList + bottomSection
do {
    try result.write(to: url, atomically: true, encoding: .utf8)
} catch {
    print("failed to create file at: \(url)")
}

