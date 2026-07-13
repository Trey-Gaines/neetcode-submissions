class Solution {
    func maxDistance(_ arrays: [[Int]]) -> Int {
        var maxVal = Int.min
        var smallest = arrays[0].first ?? Int.max
        var biggest = arrays[0].last ?? Int.min

        for i in 1..<arrays.count {
           var curr = arrays[i]
           var currLast = curr.last ?? Int.min
           var currFirst = curr.first ?? Int.max
           maxVal = max(maxVal, max(biggest - currFirst, currLast - smallest))
           smallest = min(smallest, currFirst)
           biggest = max(biggest, currLast)
        }

        return maxVal
    }
}