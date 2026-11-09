class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var maxVal = 0, ans = arr
        let end = arr.count - 1

        for i in stride(from: end, through: 0, by: -1) {
            ans[i] = maxVal
            maxVal = max(maxVal, arr[i])
            if(i == end) {
                ans[i] = -1
            }
        }

        return ans
    }
}
