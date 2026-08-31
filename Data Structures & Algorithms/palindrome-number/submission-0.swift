class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x != 0 else { return true }
        var xInt = x
        var stringA = "";
        while xInt != 0 {
            stringA += "\(abs(xInt % 10))"
            xInt = xInt / 10
        }
        x < 0 ? stringA += "-" : nil
        return String(describing: x) == stringA
    }
}