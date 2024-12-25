class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var numSet = Set<Int>()
        var count = 0
        
        for num in nums {
            if numSet.contains(num - diff) && numSet.contains(num - 2 * diff) {
                count += 1
            }
            numSet.insert(num)
        }
        
        return count
    }
}