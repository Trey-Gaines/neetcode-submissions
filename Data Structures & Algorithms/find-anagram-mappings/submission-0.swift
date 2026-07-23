class Solution {
    func anagramMappings(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict = [Int:Int]()

        for (index, num) in nums2.enumerated() {
            dict[num, default: index] = index
        }

        var ans = [Int]()
        for num in nums1 {
            if let index = dict[num] {
                ans.append(index)
            }
        }
        return ans
    }
}
