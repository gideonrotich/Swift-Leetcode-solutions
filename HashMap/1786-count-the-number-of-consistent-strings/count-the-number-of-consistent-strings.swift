class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        let filteredString = words.filter{word in
            word.allSatisfy{ allowed.contains($0)}
        }

        return filteredString.count
    }
}