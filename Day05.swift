import Foundation

struct Day05 {
    
    struct Rule {
        let before: Int
        let after: Int
    }
    
    typealias Update = [Int]
    
    struct Puzzle {
        let rules: [Rule]
        let updates: [Update]
    }
    
    func pagesAreValid(in update: Update, with rules: [Rule]) -> Bool {
        for rule in rules {
            if !update.contains(rule.before) || !update.contains(rule.after) {
                continue
            }
            if update.firstIndex(of: rule.before)! > update.firstIndex(of: rule.after)! {
                return false
            }
        }
        return true
    }
    
    func getMiddlePage(from update: Update) -> Int {
        return update[update.count/2]
    }
    
    func orderPages(in update: Update, with rules: [Rule]) -> Update {
        // filter all the rules to the ones relevant to our update sequence
        let filteredRules = rules.filter { rule in
            update.contains(rule.before) && update.contains(rule.after)
        }
        
        // Use our rules when sorting the update function
        return update.sorted { (a, b) in
            if let rule = filteredRules.first(where: { rule in
                (a == rule.before || a == rule.after) &&
                (b == rule.before || b == rule.after)
            }) {
                return rule.before == a
            }
            return false
        }
    }
    
    func parseInput(input: String) -> Puzzle {
        let splitInput = input.split(separator: "\n\n")
        let rulesStr = splitInput[0]
        let updatesStr = splitInput[1]
        let rules = rulesStr.split(separator: "\n").map { line in
            let ruleInts = line.split(separator: "|").map { Int($0) }.compactMap { $0 }
            return Rule(before: ruleInts[0], after: ruleInts[1])
        }
        let updates = updatesStr.split(separator: "\n").map { line in
            line.split(separator: ",").map { Int($0) }.compactMap { $0 }
        }
        return Puzzle(rules: rules, updates: updates)
    }
    
    func solvePart1(input: String) -> Int {
        let puzzle = parseInput(input: input)
        let validUpdates = puzzle.updates.filter { update in
            pagesAreValid(in: update, with: puzzle.rules)
        }
        return validUpdates.map { getMiddlePage(from: $0) }.reduce(0, +)
    }
    
    func solvePart2(input: String) -> Int {
        let puzzle = parseInput(input: input)
        let invalidUpdates = puzzle.updates.filter { update in
            !pagesAreValid(in: update, with: puzzle.rules)
        }
        let validUpdates = invalidUpdates.map {orderPages(in: $0, with: puzzle.rules)}
        return validUpdates.map { getMiddlePage(from: $0) }.reduce(0, +)
    }
}
