import Testing

struct Day02Test {
    
    static let input = readPuzzleInputForFile(file: #file)
    static let exampleInput = """
    7 6 4 2 1
    1 2 7 8 9
    9 7 6 2 1
    1 3 2 4 5
    8 6 4 4 1
    1 3 6 7 9
    """
    
    @Test func part2ExampleInput() {
        #expect(Day02().solvePart2(input: "7 6 4 2 1") == 1)
        #expect(Day02().solvePart2(input: "1 2 7 8 9") == 0)
        #expect(Day02().solvePart2(input: "9 7 6 2 1") == 0)
        #expect(Day02().solvePart2(input: "1 3 2 4 5") == 1)
        #expect(Day02().solvePart2(input: "8 6 4 4 1") == 1)
        #expect(Day02().solvePart2(input: "1 3 6 7 9") == 1)
    }

    @Test func examplePart1() {
        let result = Day02().solvePart1(input: Day02Test.exampleInput)
        #expect(result == 2)
    }
    
    @Test func examplePart2() {
        let result = Day02().solvePart2(input: Day02Test.exampleInput)
        #expect(result == 4)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day02Part1() throws {
        let solutionPart1 = Day02().solvePart1(input: Day02Test.input!)
        print("Day 02, Part 1 Solution: \(solutionPart1)")
        // #expect(solutionPart1 == 334)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day02Part2() throws {
        let solutionPart2 = Day02().solvePart2(input: Day02Test.input!)
        print("Day 02, Part 2 Solution: \(solutionPart2)")
        // #expect(solutionPart2 == 400)
    }

}
