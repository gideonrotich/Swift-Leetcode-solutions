class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var frequency: [Int: Int] = [:]

        // Count the frequency of each number
        for num in nums {
            frequency[num, default: 0] += 1
        }

        // Sort nums based on frequency, and by value in decreasing order for ties
        let sorted = nums.sorted {
            let freq1 = frequency[$0]!
            let freq2 = frequency[$1]!
            return freq1 == freq2 ? $0 > $1 : freq1 < freq2
        }

        return sorted
    }
}