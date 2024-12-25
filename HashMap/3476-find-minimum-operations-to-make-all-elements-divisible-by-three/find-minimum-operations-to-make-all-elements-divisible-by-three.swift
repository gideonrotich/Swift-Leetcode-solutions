class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var ans = 0

        for num in nums{
            if num % 3 != 0 {
                var sub = num - 1
                var add = num + 1

                if sub % 3 == 0 || add % 3 == 0 {
                    ans += 1
                }
            }
        }
        return ans
    }
}