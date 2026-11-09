class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var (curr, maxSeen) = (0,0)

        for num in nums {
            if(num == 1) {
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
