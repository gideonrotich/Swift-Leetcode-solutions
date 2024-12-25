class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var max = candies.max() ?? 0
        var ans :[Bool] = []

        for candy in candies{
            let sum = candy + extraCandies

            if sum >= max{
                ans.append(true)
            }else{
                ans.append(false)
            }
        }
        return ans
    }
}