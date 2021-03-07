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

questionsDict.keys.sorted().forEach {
    print("### **\($0)**")
    for file in questionsDict[$0]! {
        let name = file.components(separatedBy: ".")[0]
        print("[\(name)](Algorithms/Algorithms/Questions/\($0)/\(file))\n")
        
    }
    print()
}

