import Foundation

struct Day04 {
    
    func getOptString(in grid: [[String]], _ x: Int, _ y: Int) -> String? {
        if y < 0 || y >= grid.count {
            return nil
        }
        if x < 0 || x >= grid[y].count {
            return nil
        }
        return grid[y][x]
    }
    
    func countXmas(in grid: [[String]], x: Int, y: Int) -> Int {
        var count = 0
        for dy in -1...1 {
            for dx in -1...1 {
                if (
                    getOptString(in: grid, x + dx * 0, y + dy * 0) == "X" &&
                    getOptString(in: grid, x + dx * 1, y + dy * 1) == "M" &&
                    getOptString(in: grid, x + dx * 2, y + dy * 2) == "A" &&
                    getOptString(in: grid, x + dx * 3, y + dy * 3) == "S"
                ) {
                    count += 1
                }
            }
        }
        return count
    }
    
    func hasStarMas(in grid: [[String]], x: Int, y: Int) -> Bool {
        if getOptString(in: grid, x, y) != "A" {
            return false
        }
        
        // top-left, bottom-right
        if !(
            (
                getOptString(in: grid, x - 1, y - 1) == "M" &&
                getOptString(in: grid, x + 1, y + 1) == "S"
            ) ||
            (
                getOptString(in: grid, x - 1, y - 1) == "S" &&
                getOptString(in: grid, x + 1, y + 1) == "M"
            )
        ) {
            return false
        }
        
        // bottom-left, top-right
        if !(
            (
                getOptString(in: grid, x - 1, y + 1) == "M" &&
                getOptString(in: grid, x + 1, y - 1) == "S"
            ) ||
            (
                getOptString(in: grid, x - 1, y + 1) == "S" &&
                getOptString(in: grid, x + 1, y - 1) == "M"
            )
        ) {
            return false
        }
        
        return true
    }
    
    func solvePart1(input: String) -> Int {
        let grid = input.split(separator: "\n").map { $0.split(separator: "").map { String($0) } }
        var count = 0
        for y in 0..<grid.count {
            for x in 0..<grid[y].count {
                count += countXmas(in: grid, x: x, y: y)
            }
        }
        return count
    }
    
    func solvePart2(input: String) -> Int {
        let grid = input.split(separator: "\n").map { $0.split(separator: "").map { String($0) } }
        var count = 0
        for y in 0..<grid.count {
            for x in 0..<grid[y].count {
                if (hasStarMas(in: grid, x: x, y: y)) {
                    count += 1
                }
            }
        }
        return count
    }
}
