class Solution {
    func getSneakyNumbers(_ nums: [Int]) -> [Int] {
        var interval: [Int:Int] = [:]
        var ans:[Int] = []

        for num in nums{
            interval[num, default:0] += 1
        }

        for (key,value) in interval{
            if value > 1{
                ans.append(key)
            }
        }

        return ans
    }
}