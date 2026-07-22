class Solution {
    func confusingNumber(_ n: Int) -> Bool {
        var (dict, newInt) = ([0 : "0", 1: "1", 6: "9", 8: "8", 9: "6", 2: "-1", 
        3: "-1", 4: "-1", 5: "-1", 7: "-1"], [String]())

        for char in String(n).reversed() {
            if let current = char.wholeNumberValue {
                if let value = dict[current] {
                    if value != "-1" {
                        newInt.append(value)
                    }
                    else { return false }
                }
            }
            else { return false }
        }
        return n != Int(newInt.joined())
    }
}
