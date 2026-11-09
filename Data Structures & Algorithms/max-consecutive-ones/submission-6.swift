class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var (curr, maxSeen) = (0,0)

        for num in nums {
            switch(num) {
                case 1:
                    curr += 1
                    break;
                default:
                    maxSeen = max(maxSeen, curr)
                    curr = 0
                    break;
            }
        }
        return max(maxSeen, curr)
    }
}
