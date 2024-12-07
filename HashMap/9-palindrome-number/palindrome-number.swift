class Solution {
    func isPalindrome(_ x: Int) -> Bool {

     if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }

        let original = String(x)
        let reversed = String(original.reversed())

        return original == reversed
    }
}