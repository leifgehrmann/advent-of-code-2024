import Foundation

struct Day03 {
    
    func solvePart1(input: String) -> Int {
        var sum = 0
        let matches = input.matches(of: /mul\((?<left>\d+),(?<right>\d+)\)/)
        matches.forEach { (result) in
            let left = Int(result.output.left)!
            let right = Int(result.output.right)!
            sum += left * right
        }
        return sum
    }
    
    func solvePart2(input: String) -> Int {
        var doFlag = true
        var sum = 0
        let matches = input.matches(of: /(?<do>do\(\))|(?<dont>don\'t\(\))|mul\((?<left>\d+),(?<right>\d+)\)/
        )
        matches.forEach { (result) in
            if result.output.do != nil {
                doFlag = true
                return
            }
            if result.output.dont != nil {
                doFlag = false
                return
            }
            if let leftStr = result.output.left,
               let rightStr = result.output.right,
               let left = Int(leftStr),
               let right = Int(rightStr) {
                if (doFlag) {
                    sum += left * right
                }
            }
        }
        return sum
    }
}
