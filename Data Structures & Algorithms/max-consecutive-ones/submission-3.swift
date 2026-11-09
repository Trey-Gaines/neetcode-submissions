class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var (curr, maxSeen) = (0,0)

        for i in 1..<nums.count {
            if(nums[i-1] == 1 && nums[i] == 1) {
                curr += 1
            }
            else if(nums[i] == 1) {
                curr += 1
            }
            else {
                maxSeen = max(maxSeen, curr)
                curr = 0
            }
        }
        return max(maxSeen, curr)
    }
}
