class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var dictionary: [String : String] = [:]

        for path in paths{
            dictionary[path[0]] = path[1]
        }

        var keys = dictionary.keys.map{$0}

        for (key,value) in dictionary{
            if !keys.contains(value){
                return value
            }
        }

        return ""
    }
}