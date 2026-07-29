class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxInt = 0
        var curr = 0
        var i = 0
        let count = nums.count - 1

        for i in 0...count {
            print(i, nums[i], curr, maxInt)
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
