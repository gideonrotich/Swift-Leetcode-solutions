class Solution {
    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var ans : [Int] = []
        var countOne = 0
        var countTwo = 0

        for i in 0..<nums1.count{
            if nums2.contains(nums1[i]){
                countOne += 1
            }
        }

        for j in 0..<nums2.count{
            if nums1.contains(nums2[j]){
                countTwo += 1
            }
        }

        return [countOne,countTwo]
    }
}