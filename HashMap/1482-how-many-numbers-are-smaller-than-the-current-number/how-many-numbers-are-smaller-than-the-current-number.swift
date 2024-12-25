class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var ans: [Int] = []

        for i in 0..<nums.count{
            var temp : [Int] = []

            var filteredArray = nums.filter{ $0 != nums[i]}

            for j in 0..<filteredArray.count{
                if filteredArray[j] < nums[i]{
                    temp.append(filteredArray[j])
                }
            }
            ans.append(temp.count)
        }
        return ans
    }
}