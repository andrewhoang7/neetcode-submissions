import Foundation

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        //What to remember
        var runningCount = 0
        var maxNum = 0
        //Traverse and determine logic. if it's 1, we append the count, if not, we reset the couunt and adjust what the maximum window of 1's we have seen up until that point
        for i in nums {
            if i == 1 {
                runningCount += 1
            } else {
                maxNum = max(maxNum, runningCount)
                runningCount = 0

            }
        }
        //We make one final because if our last elemenet is a 1, then our runningCount has the most current value - we then make one final max comparison to see if the last runningCount is in fact bigger than the current maxNum value
        return max(maxNum, runningCount)
    }
}
