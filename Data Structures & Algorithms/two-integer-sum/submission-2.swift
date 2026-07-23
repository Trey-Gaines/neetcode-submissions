class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()

        for (idx, num) in nums.enumerated() {
            var targetValue = target - num
            if let valid = dict[targetValue] {
                return [idx, valid].sorted()
            } else { dict[num] = idx }
        }  
        return [0,0]   
    }
}