class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let jewelsSet = Set(jewels)
        
        var count = 0
        
        // Iterate through each stone and check if it is a jewel
        for stone in stones {
            if jewelsSet.contains(stone) {
                count += 1
            }
        }
        
        return count
    }
}