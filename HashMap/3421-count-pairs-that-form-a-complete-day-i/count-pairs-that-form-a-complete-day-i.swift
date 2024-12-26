class Solution {
    func countCompleteDayPairs(_ hours: [Int]) -> Int {
        var ans = 0
        
        for i in 0..<hours.count{
            for j in (i+1)..<hours.count{
                if (hours[i] + hours[j]) % 24 == 0 {
                    ans += 1
                }
            }
        }

        return ans
    }
}