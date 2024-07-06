class Solution {
    func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
         var count = 0
        
        for num2 in nums2 {
            let targetDivisor = num2 * k
            for num1 in nums1 {
                if num1 % targetDivisor == 0 {
                    count += 1
                }
            }
        }
        
        return count
    }
}