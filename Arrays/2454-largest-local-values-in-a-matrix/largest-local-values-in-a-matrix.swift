class Solution {
    func largestLocal(_ grid: [[Int]]) -> [[Int]] {
          let n = grid.count
        var maxLocal = Array(repeating: Array(repeating: 0, count: n - 2), count: n - 2)

        for i in 1..<n-1 {
            for j in 1..<n-1 {
                var maxValue = Int.min
                for k in i-1...i+1 {
                    for l in j-1...j+1 {
                        maxValue = max(maxValue, grid[k][l])
                    }
                }
                maxLocal[i-1][j-1] = maxValue
            }
        }

        return maxLocal
    }
}