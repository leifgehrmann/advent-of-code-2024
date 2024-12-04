import Testing

struct Day04Test {
    
    static let input = readPuzzleInputForFile(file: #file)
    static let exampleInput = """
    MMMSXXMASM
    MSAMXMSMSA
    AMXSXMAAMM
    MSAMASMSMX
    XMASAMXAMM
    XXAMMXXAMA
    SMSMSASXSS
    SAXAMASAAA
    MAMMMXMMMM
    MXMXAXMASX
    """

    @Test func examplePart1Small() {
        let result = Day04().solvePart1(input:
            """
            ..X...
            .SAMX.
            .A..A.
            XMAS.S
            .X....
            """
            )
        #expect(result == 4)
    }
    
    @Test func part1TestAllCases() {
        let result = Day04().solvePart1(input:
            """
            X..X..X
            .M.M.M.
            ..AAA..
            XMASAMX
            ..AAA..
            .M.M.M.
            X..X..X
            """
            )
        #expect(result == 8)
    }
    
    @Test func examplePart1() {
        let result = Day04().solvePart1(input: Day04Test.exampleInput)
        #expect(result == 18)
    }
    
    @Test func part2TestAllCases() {
        let result = Day04().solvePart2(input:
            """
            M.S.S.S
            .A...A.
            M.S.M.M
            .......
            S.M.M.M
            .A...A.
            S.M.S.S
            """
            )
        #expect(result == 4)
    }

    @Test func examplePart2() {
        let result = Day04().solvePart2(input: Day04Test.exampleInput)
        #expect(result == 9)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day04Part1() throws {
        let solutionPart1 = Day04().solvePart1(input: Day04Test.input!)
        print("Day 03, Part 1 Solution: \(solutionPart1)")
        // #expect(solutionPart1 == 2685)
    }
    
    @Test(.disabled(if: input == nil), .tags(.solution))
    func day04Part2() throws {
        let solutionPart2 = Day04().solvePart2(input: Day04Test.input!)
        print("Day 04, Part 2 Solution: \(solutionPart2)")
        // #expect(solutionPart2 == 2048)
    }

}
