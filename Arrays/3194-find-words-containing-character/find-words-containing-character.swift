class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var ans = [Int]()

        for i in 0..<words.count{
            if(words[i].contains(x)){
                ans.append(i)
            }
        }
        return ans
    }
}