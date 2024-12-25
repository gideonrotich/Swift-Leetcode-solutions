class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        var ans = 0

        for hour in hours{
            if hour >= target{
                ans += 1
            }
        }

        return ans
    }
}