class Solution {
    func isPalindrome(_ x: Int) -> Bool {
         if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }
        
        var originalNumber = x
        var reversedNumber = 0
        
        while originalNumber > reversedNumber {
            let digit = originalNumber % 10
            reversedNumber = reversedNumber * 10 + digit
            originalNumber /= 10
        }
        
        // The number is a palindrome if the original number equals the reversed number
        // or if the original number equals the reversed number divided by 10 (for odd-length numbers)
        return originalNumber == reversedNumber || originalNumber == reversedNumber / 10   }
}