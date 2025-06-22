class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let words = s.trimmingCharacters(in: .whitespaces).split(separator: " ")

        return words.last?.count ?? 0
    }
}