class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [[Character]: [String]] = [:]

        for str in strs {
            var sorted = str.sorted()
            dict[sorted, default: []].append(str)
        }

        return Array(dict.values)
    }
}