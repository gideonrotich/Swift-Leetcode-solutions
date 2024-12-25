class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
    let array = (UnicodeScalar("a").value...UnicodeScalar("z").value).map { String( UnicodeScalar($0)!) }

        for i in 0..<array.count{
            if !sentence.contains(array[i]){
                return false
            }
        }
        return true
    }
}