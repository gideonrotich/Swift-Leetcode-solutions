class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating:0,count:nums.count)

        for i in 0..<nums.count{
            var count = 0

            for j in 0..<nums.count{
                if nums[j] < nums[i]{
                    count += 1
                }
            }
            result[i] = count
        }
        return result
    }
}