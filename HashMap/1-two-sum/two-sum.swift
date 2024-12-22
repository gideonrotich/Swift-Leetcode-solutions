class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int: Int]()

        for (index,num) in nums.enumerated(){
            let complement = target - num

            if let complementIndex = dictionary[complement]{
                return [complementIndex, index]
            }

            dictionary[num] = index
        }
        return []
    }
}