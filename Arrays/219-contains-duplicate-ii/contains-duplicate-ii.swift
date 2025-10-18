class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var initialDictionary: [Int:Int] = [:]
        var array: [Int] = []

        var nextDictionary: [Int: [Int]] = [:]

        var finalArray:[Bool] = []

        for num in nums{
            initialDictionary[num, default: 0] += 1
        }

        for (index, num) in nums.enumerated() {
            nextDictionary[num, default: []].append(index)
        }

        for (key, value) in initialDictionary {
            if value >= 2 {          
                array.append(key)
            }
        }

       for digit in array {
            if let indices = nextDictionary[digit], indices.count >= 2 {
                
                for i in 0..<(indices.count - 1) {
                    let difference = abs(indices[i] - indices[i + 1])
                    if difference <= k {
                        finalArray.append(true)
                    } else {
                        finalArray.append(false)
                    }
                }
            }
        }

        return finalArray.contains(true)
    }
}