import Foundation

struct Day01 {
    func solvePart1(input: String) -> Int {
        let parsedInput: [[Int]] = input.split(separator: "\n").map { line in
            line.split(separator: " ").map { Int($0) }.compactMap { $0 }
        }
        let leftListSorted = parsedInput.map { element in element[0] }.sorted()
        let rightListSorted = parsedInput.map { element in element[1] }.sorted()
        
        return leftListSorted.enumerated().map { (index, leftListValue) in
            let rightListValue = rightListSorted[index]
            return abs(leftListValue - rightListValue)
        }.reduce(0, +)
    }
    
    func solvePart2(input: String) -> Int {
        let parsedInput: [[Int]] = input.split(separator: "\n").map { line in
            line.split(separator: " ").map { Int($0) }.compactMap { $0 }
        }
        let leftList = parsedInput.map { element in element[0] }
        var rightListCounts: [Int: Int] = [:]
        parsedInput.forEach { (element) in
            rightListCounts[element[1], default: 0] += 1
        }
        
        return leftList.map { leftListValue in
            let rightListCount = rightListCounts[leftListValue, default: 0]
            return leftListValue * rightListCount
        }.reduce(0, +)
    }
}
