class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var dictionary: [Int:Int] = [:]

        for i in 0..<nums.count{
            dictionary[nums[i], default: 0] += 1
        }

        var array : [Int] = []

        for(key,value) in dictionary{
            if value == 2{
                array.append(key)
            }
        }
    
        return array
    }
}