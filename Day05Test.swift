import Testing

struct Day05Test {
    
    static let input = readPuzzleInputForFile(file: #file)
    static let exampleInput = """
    47|53
    97|13
    97|61
    97|47
    75|29
    61|13
    75|53
    29|13
    97|29
    53|29
    61|53
    97|53
    61|29
    47|13
    75|47
    97|75
    47|61
    75|61
    47|29
    75|13
    53|13

    75,47,61,53,29
    97,61,53,29,13
    75,29,13
    75,97,47,61,53
    61,13,29
    97,13,75,29,47
    """
    
    @Test func pagesAreValidReturnsExpected() {
        #expect(Day05().pagesAreValid(in: [10, 20, 30], with: [
            Day05.Rule(before: 10, after: 20),
            Day05.Rule(before: 20, after: 30)
        ]))
    }
    
    @Test func examplePart1() {
        let result = Day05().solvePart1(input: Day05Test.exampleInput)
        #expect(result == 143)
    }

    @Test func examplePart2() {
        let result = Day05().solvePart2(input: Day05Test.exampleInput)
        #expect(result == 123)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day05Part1() throws {
        let solutionPart1 = Day05().solvePart1(input: Day05Test.input!)
        print("Day 05, Part 1 Solution: \(solutionPart1)")
        // #expect(solutionPart1 == 6612)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day05Part2() throws {
        let solutionPart2 = Day05().solvePart2(input: Day05Test.input!)
        print("Day 05, Part 2 Solution: \(solutionPart2)")
        // #expect(solutionPart2 == 4944)
    }

}
