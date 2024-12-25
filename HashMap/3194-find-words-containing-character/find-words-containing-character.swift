class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var ans: [Int] = []

        for (index,word) in words.enumerated(){
            if word.contains(x){
                ans.append(index)
            }
        }
        return ans
    }
}