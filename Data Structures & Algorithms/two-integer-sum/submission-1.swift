class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //set a dictionary as a way to track what we have seen before, trading memory for speed. we will be storing the *index*, with the value as the key
        var dict: [Int:Int] = [:]
        //travese the array
        for (index, value) in nums.enumerated() {
            //calculate a complement for each number
            var complement = target - value
            //if there is an index already in the dictionary that matches the complement we need (a previous index), then we can return the current pair. otherwise, we store what we've just now seen
            if let prevIndex = dict[complement] {
                return [prevIndex, index]
            } else {
                dict[value] = index
            }
        }
        return []
    }
}
