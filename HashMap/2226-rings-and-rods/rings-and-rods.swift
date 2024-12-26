class Solution {
    func countPoints(_ rings: String) -> Int {
        var ans = 0
        var dictionary: [Character: String] = [:]

        for i in stride(from: 0,to: rings.count, by: 2){
            var characterIndex = rings.index(rings.startIndex, offsetBy: i)
            var numberIndex = rings.index(rings.startIndex, offsetBy: i+1)

            let character = rings[characterIndex]
            let number = rings[numberIndex]

            if dictionary[number] != nil{
                dictionary[number]! += String(character)
            }else{
                dictionary[number] = String(character)
            }
        }


        for(key,value) in dictionary{
            if value.contains("B") && value.contains("R") && value.contains("G"){
                ans += 1
            }
        }

        return ans
    }
}