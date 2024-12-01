import Foundation

func readPuzzleInputForFile(file: String) -> String? {
    let inputPath = URL(fileURLWithPath: file.replacingOccurrences(of: "Test.swift", with: ".txt"))
    print(inputPath.absoluteString)
    do {
        return try String(contentsOf: inputPath, encoding: .utf8)
    } catch {
        return nil
    }
}
