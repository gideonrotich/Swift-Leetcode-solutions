class Solution {
    func countAsterisks(_ s: String) -> Int {
        var count = 0
        var insidePair = false

        for char in s {
            if char == "|" {
                insidePair.toggle() // Switch between inside and outside the pair
            } else if char == "*" && !insidePair {
                count += 1 // Only count '*' when outside a pair
            }
        }

        return count
    }
}