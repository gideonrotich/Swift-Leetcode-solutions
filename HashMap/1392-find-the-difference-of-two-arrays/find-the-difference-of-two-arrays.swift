class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var ans: [[Int]] = []

        var left: [Int] = []
        var right: [Int] = []

        for num in nums1{
            if !nums2.contains(num){
                left.append(num)
            }
        }

         for num in nums2{
            if !nums1.contains(num){
                right.append(num)
            }
        }

        ans.append(Array(Set(left)))
        ans.append(Array(Set(right)))

        return ans
    }
}