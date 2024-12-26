class Solution {
    func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
        var ans: [Int] = []

        for i in 0..<nums.count{
            var leftSet = Set<Int>()
            var rightSet = Set<Int>()

            for j in 0...i{
                leftSet.insert(nums[j])
            }

            for k in (i+1)..<nums.count{
                rightSet.insert(nums[k])
            }

            ans.append(leftSet.count - rightSet.count)
        }

        return ans
    }
}