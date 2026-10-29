import Foundation

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxNum = 0
        var count = 0
        for i in nums {
            if i == 1 {
                count += 1 
            } else {
                maxNum = max(maxNum, count)
                count = 0
            }
        }
        return max(maxNum, count)
    }
}
