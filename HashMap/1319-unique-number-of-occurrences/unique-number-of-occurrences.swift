class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
          var map = [Int: Int]()

        for num in arr {
            map[num, default: 0] += 1
        }

        var list = [Int]()
        var set = Set<Int>()
        for value in map.values {
            list.append(value)
            set.insert(value)
        }

        return list.count == set.count
    }
}