class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       var indexMap = [Int:Int]()

       for(i,num) in nums.enumerated(){
         let complement = target - num
         if let index = indexMap[complement]{
               return [index,i]
         }
            indexMap[num] = i
       }

       return []
    }
}