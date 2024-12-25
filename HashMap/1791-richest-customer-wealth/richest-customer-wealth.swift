class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var ans: Int = 0

        for i in accounts{
            ans = max(ans, i.reduce(0,+))
        }

        return ans
    }
}