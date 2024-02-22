class Solution {
    fun findJudge(n: Int, trust: Array<IntArray>): Int {
          val trustsReceived = HashMap<Int, Int>()
        val trustsGiven = HashMap<Int, Int>()
        
        // Iterate through the trust array to populate the HashMaps
        for (pair in trust) {
            val a = pair[0]
            val b = pair[1]
            
            trustsReceived[b] = trustsReceived.getOrDefault(b, 0) + 1
            trustsGiven[a] = trustsGiven.getOrDefault(a, 0) + 1
        }
        
        // Iterate through the people to find the town judge
        for (person in 1..n) {
            if (trustsReceived.getOrDefault(person, 0) == n - 1 && trustsGiven.getOrDefault(person, 0) == 0) {
                return person // Found the town judge
            }
        }
        
        // If no town judge is found, return -1
        return -1
    }
}