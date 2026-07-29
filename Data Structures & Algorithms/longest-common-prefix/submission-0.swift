class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefixStr = strs[0]

        for i in 1..<strs.count {
            while strs[i].prefix(prefixStr.count) != prefixStr && prefixStr.count > 0 {
                prefixStr.popLast()
            }
        }

        return prefixStr
    }
}