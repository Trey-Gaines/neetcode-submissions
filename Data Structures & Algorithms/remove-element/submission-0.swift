class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0; let count = nums.count
        
        for j in 0..<count {
            if nums[j] != val {
                nums[i] = nums[j]
                i += 1
            }
        }

        return i
    }
}