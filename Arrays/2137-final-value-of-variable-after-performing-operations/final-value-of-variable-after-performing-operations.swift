class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var result = 0

        for operation in operations{
            if operation == "++X" || operation == "X++"{
                result += 1
            }else if operation  == "--X" || operation == "X--"{
                result -= 1
            }
        }

        return result
    }
}