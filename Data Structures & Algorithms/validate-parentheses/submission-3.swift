class Solution {
    func isValid(_ s: String) -> Bool {
        let endDic: [Character: Character] = ["}": "{", "]": "[", ")": "("]
        var stk = [Character]()
        stk.reserveCapacity(s.length)

        for char in s {
            if let open = endDic[char] {
                guard !stk.isEmpty else { return false }
                if let top = stk.popLast(), open != top {
                    return false
                }
            }
            else { stk.append(char) }
        }
        return stk.isEmpty
    }
}
