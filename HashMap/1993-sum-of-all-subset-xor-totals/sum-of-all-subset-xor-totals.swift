class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        
          var totalXORSum = 0
        
        func calculateSubsetXOR(index: Int, currentXOR: Int) {
            if index == nums.count {
                totalXORSum += currentXOR
                return
            }
            
            // Include the current element in the subset
            calculateSubsetXOR(index: index + 1, currentXOR: currentXOR ^ nums[index])
            
            // Exclude the current element from the subset
            calculateSubsetXOR(index: index + 1, currentXOR: currentXOR)
        }
        
        // Start the recursion with index 0 and XOR value 0
        calculateSubsetXOR(index: 0, currentXOR: 0)
        
        return totalXORSum
    }
}