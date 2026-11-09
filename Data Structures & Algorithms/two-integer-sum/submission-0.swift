class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //create a dictionary with the value as dictionary key, and index as dictionary value
        //iterate through nums, enumerated
        //if the value of i matches the target, return the indices of i and then j
        //otherwise, add to the dictionary
        var dict: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            //for every value there is a complement, calculate it
            var complement = target - value
            if let prevIndex = dict[complement] {
                return [prevIndex, index]

            // //if this current value 

            // if dict[index] - target == complement {
            //     return ()

            //else, otherwise, add to the dictionary for the next iteration
            } else {
                dict[value] = index
            }
        }
        return []
    }
}
