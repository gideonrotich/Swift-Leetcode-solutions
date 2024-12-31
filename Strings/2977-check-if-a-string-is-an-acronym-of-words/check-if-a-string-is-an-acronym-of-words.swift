class Solution {
    func isAcronym(_ words: [String], _ s: String) -> Bool {
        var array : [String] = []

        for word in words{
            var firstIndex = word.index(word.startIndex, offsetBy: 0)
            var first = word[firstIndex]
            array.append(String(first))
        }

        var joined = array.joined()

        return joined == s
    }
}