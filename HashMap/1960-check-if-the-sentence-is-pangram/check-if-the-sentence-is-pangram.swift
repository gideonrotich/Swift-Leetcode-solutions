class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var set = Set<Character>()

        var original = [Character]()
        for string in sentence{
            
            set.insert(string)
        }
        if set.count == 26{
            return true
        }
        return false
    }
}