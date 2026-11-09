class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var count = 0
        for i in 0..<nums.count {
            if(nums[i] == val) {
                nums[i] = 101
            }
            else {
                count += 1
            }
        }

        nums.sort()
        return count
    }
}