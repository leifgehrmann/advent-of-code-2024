import Testing

struct Day03Test {
    
    static let input = readPuzzleInputForFile(file: #file)
    static let exampleInputPart1 = """
    xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))
    """
    static let exampleInputPart2 = """
    xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))
    """

    @Test func examplePart1() {
        let result = Day03().solvePart1(input: Day03Test.exampleInputPart1)
        #expect(result == 161)
    }
    
    @Test func examplePart2() {
        let result = Day03().solvePart2(input: Day03Test.exampleInputPart2)
        #expect(result == 48)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day03Part1() throws {
        let solutionPart1 = Day03().solvePart1(input: Day03Test.input!)
        print("Day 03, Part 1 Solution: \(solutionPart1)")
        // #expect(solutionPart1 == 196826776)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day03Part2() throws {
        let solutionPart2 = Day03().solvePart2(input: Day03Test.input!)
        print("Day 03, Part 2 Solution: \(solutionPart2)")
        // #expect(solutionPart2 == 106780429)
    }

}
