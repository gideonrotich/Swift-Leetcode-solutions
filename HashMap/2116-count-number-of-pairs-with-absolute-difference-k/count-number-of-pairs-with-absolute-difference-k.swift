class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var ans = 0

        for i in 0..<nums.count{
            for j in (i+1)..<nums.count{
                if (abs(nums[i] - nums[j]) == k){
                    ans += 1
                }
            }
        }
        return ans
    }
}