class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dictionary : [Int:Int] = [:]

        for num in nums{
            dictionary[num, default: 0] += 1
        }

        for (key,value) in dictionary {
            if value == 1{
                return key
            }
        }

        return 0
    }
}