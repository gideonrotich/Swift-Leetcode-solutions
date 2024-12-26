class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        var dictionary : [Character: Int] = [:]

        for char in s{
            dictionary[char,default: 0] += 1
        }

        var values = dictionary.values.map{$0}

        if values.allSatisfy{ $0 == values.first}{
            return true
        }

        return false
    }
}