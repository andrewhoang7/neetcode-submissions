class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var newStr = ""
        for char in s {
            if char.isLetter || char.isNumber {
                newStr.append(char.lowercased())
            }
        }
        return newStr == String(newStr.reversed())
    }
}
