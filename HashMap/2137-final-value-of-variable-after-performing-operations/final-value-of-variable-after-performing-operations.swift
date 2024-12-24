class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var ans = 0

        for operation in operations{
            if operation == "--X" || operation == "X--"{
                ans += -1
            }else if operation == "++X" || operation == "X++"{
                ans += 1
            }
        }

        return ans
    }
}