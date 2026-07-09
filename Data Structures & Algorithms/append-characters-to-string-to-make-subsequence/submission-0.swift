class Solution {
    func appendCharacters(_ s: String, _ t: String) -> Int {
        let tArr = Array(t)
        var tPos = 0

        for char in s {
            guard tPos < tArr.count else { break }
            if tArr[tPos] == char {
                tPos += 1 
            }
        }

        return tArr.count - tPos
    }
}
