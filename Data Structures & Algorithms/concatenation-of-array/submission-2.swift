class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let end = nums.count * 2, numCount = nums.count
        var ans = Array(repeating: 0, count: end)
        for i in 0..<end {
            ans[i] = nums[i % numCount]
        }

        return ans
    }
}
