class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var ans = [Int](repeating : 0,count: nums.count)

        for i in 0..<n{
            ans[2*i] = nums[i]
            ans[2*i+1] = nums[i+n]
        }

        return ans
    }
}