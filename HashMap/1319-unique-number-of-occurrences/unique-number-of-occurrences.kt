class Solution {
    fun uniqueOccurrences(arr: IntArray): Boolean {
        val map = HashMap<Int,Int>()

        for(i in arr.indices){
            map[arr[i]] = map.getOrDefault(arr[i],0)+1
        }

        val list = mutableListOf<Int>()
        val set = HashSet<Int>()
        for(i in map.values){
            list.add(i)
            set.add(i)
        }

        if(list.count() == set.count()){
            return true
        }
        return false

    }
}