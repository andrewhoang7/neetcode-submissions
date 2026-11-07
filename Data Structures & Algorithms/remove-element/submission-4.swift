class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        //two pointers technique
        //one pointer just scans through the elemenets
        //the other....tracks? 

        //you have nums and val
        //change nums so the first k slots (k representing every element not equal to val) holds every element not equal to val
        //return....k?
        var k = 0
        for i in nums {
            if i != val {
                nums[k] = i
                k += 1
            }
        }
        return k
    }
}
