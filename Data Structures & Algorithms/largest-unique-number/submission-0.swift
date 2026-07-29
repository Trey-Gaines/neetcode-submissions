class Solution {
    func largestUniqueNumber(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var maxValue = -1
        for each in nums {
            dict[each, default: 0] += 1
        }

        for (key, value) in dict {
            if value < 2 {
                maxValue = max(maxValue, key) 
            }
        }
        return maxValue
    }
}
