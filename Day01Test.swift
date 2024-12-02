import Testing

struct Day01Test {
    
    static let input = readPuzzleInputForFile(file: #file)
    static let exampleInput = """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    """

    @Test func examplePuzzlePart1() {
        let result = Day01().solvePart1(input: Day01Test.exampleInput)
        #expect(result == 11)
    }
    
    @Test func examplePuzzlePart2() {
        let result = Day01().solvePart2(input: Day01Test.exampleInput)
        #expect(result == 31)
    }
    
    @Test(.disabled(if: input == nil))
    func realPuzzlePart1() throws {
        let solutionPart1 = Day01().solvePart1(input: Day01Test.input!)
        print("Day 01, Part 1 Solution: \(solutionPart1)")
        // #expect(solutionPart1 == 2164381)
    }
    
    @Test(.disabled(if: input == nil))
    func realPuzzlePart2() throws {
        let solutionPart2 = Day01().solvePart2(input: Day01Test.input!)
        print("Day 01, Part 2 Solution: \(solutionPart2)")
        // #expect(solutionPart1 == 20719933)
    }

}
