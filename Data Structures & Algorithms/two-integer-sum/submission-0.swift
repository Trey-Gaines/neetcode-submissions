class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (index, val) in nums.enumerated() {
            let valueToSearch = target - val
            if let targetIdx = dict[valueToSearch] {
                return [index, targetIdx]
            } else {
                dict[val] = index
            }
        }
        return []
    }
}