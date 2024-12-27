class Solution {
    func sortSentence(_ s: String) -> String {
            var array = s.split(separator: " ")
        var answer: [String] = Array(repeating: "", count: array.count)
        
        for word in array {
            let wordWithoutNumber = String(word.dropLast()) // Remove the last character (the number)
            
            if let lastChar = word.last, let position = Int(String(lastChar)) {
                let index = position - 1 // Adjust to 0-indexed
                answer[index] = wordWithoutNumber
            }
        }
        
        return answer.joined(separator: " ")
    }
}