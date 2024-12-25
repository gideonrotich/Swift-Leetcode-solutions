class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        
        let zipped = zip(names,heights)

        return zipped.sorted{$0.1 > $1.1}.map{$0.0}

    }
}