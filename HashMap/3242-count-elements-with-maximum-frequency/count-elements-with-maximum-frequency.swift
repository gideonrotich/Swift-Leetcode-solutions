class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var dictionary : [Int:Int] = [:]

        for i in 0..<nums.count{
            dictionary[nums[i], default: 0] += 1
        }

        var max = dictionary.values.map {$0}.max()

        var array : [Int] = []

        for (key,value) in dictionary{
            if value == max{
                array.append(value)
            }
        }

        return array.reduce(0,+)
    }
}