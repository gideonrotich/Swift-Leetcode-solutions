class Solution {
    func findPermutationDifference(_ s: String, _ t: String) -> Int {
         var indexMap = [Character: Int]()
        var permutationDifference = 0
        
        // Create a map of characters to their indices in s
        for (index, char) in s.enumerated() {
            indexMap[char] = index
        }
        
        // Calculate permutation difference
        for (tIndex, char) in t.enumerated() {
            let sIndex = indexMap[char]!
            permutationDifference += abs(sIndex - tIndex)
        }
        
        return permutationDifference
    }
}