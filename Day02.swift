import Foundation

struct Day02 {
    
    func safe (levels: [Int]) -> Bool {
        for (index, level) in levels.enumerated() {
            if index == 0 { continue }
            if levels[index - 1] == level || abs(levels[index - 1] - level) > 3 {
                return false
            }
            if index == 1 { continue }
            let deltaA = levels[index - 2] - levels[index - 1]
            let deltaB = levels[index - 1] - levels[index - 0]
            if deltaA.signum() != deltaB.signum() {
                return false
            }
        }
        return true
    }
    
    func safeWithTolerance (levels: [Int]) -> Bool {
        if safe(levels: levels) {
            return true
        }
        
        // Meh, I'm lazy, let's brute force it
        for i in 0..<levels.count {
            var newLevels = levels
            newLevels.remove(at: i)
            if safe(levels: newLevels) {
                return true
            }
        }
        return false
    }
    
    func parse(_ input: String) -> [[Int]] {
        return input.split(separator: "\n").map { line in
            line.split(separator: " ").map { Int($0) }.compactMap { $0 }
        }
    }
    
    func solvePart1(input: String) -> Int {
        let parsedInput = parse(input)
        return parsedInput.filter {safe(levels: $0)}.count
    }
    
    func solvePart2(input: String) -> Int {
        let parsedInput = parse(input)
        return parsedInput.filter {safeWithTolerance(levels: $0)}.count
    }
}
