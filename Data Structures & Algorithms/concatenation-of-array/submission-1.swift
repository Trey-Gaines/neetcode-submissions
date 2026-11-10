class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = Array(repeating: 0, count: nums.count * 2)
        let end = ans.count
        for i in 0..<end {
            ans[i] = nums[i % nums.count]
        }

        return ans
    }
}
