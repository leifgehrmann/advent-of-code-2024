import Testing

let input = readPuzzleInputForFile(file: #file)
let exampleInput = """
3   4
4   3
2   5
1   3
3   9
3   3
"""

struct Day01Test {

    @Test func examplePuzzlePart1() {
        let result = Day01().solvePart1(input: exampleInput)
        #expect(result == 11)
    }
    
    @Test func examplePuzzlePart2() {
        let result = Day01().solvePart2(input: exampleInput)
        #expect(result == 31)
    }
    
    @Test(.disabled(if: input == nil))
    func realPuzzle() throws {
        let solutionPart1 = Day01().solvePart1(input: input!)
        print("Day 01, Part 1 Solution: \(solutionPart1)")
        // #expect(solutionPart1 == 2164381)
        
        let solutionPart2 = Day01().solvePart2(input: input!)
        print("Day 01, Part 1 Solution: \(solutionPart2)")
        // #expect(solutionPart1 == 20719933)
    }

}
