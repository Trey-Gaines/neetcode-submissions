class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var (maxInt, curr, i) = (0, 0, 0)
        let count = nums.count - 1

        for i in 0...count {
            if nums[i] == 1 {
                curr += 1
            } 
            
            if nums[i] == 0 || i == count {
                maxInt = max(curr, maxInt)
                curr = 0
            }
        }
        return maxInt
    }
}
