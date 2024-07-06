class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var ans = 0 

        for wealth in accounts{
            let max = wealth.reduce(0,+)

            if max > ans{
                ans = max
            }
        }
        return ans
    }
}