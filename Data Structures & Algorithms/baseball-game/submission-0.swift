class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stk: [Int] = [Int]()
        stk.reserveCapacity(operations.count)
        
        for char in operations {
            switch(char) {
                case "D":
                    guard stk.count >= 1 else { break }
                    if let a = stk.popLast() {
                        var b = a * 2
                        stk.append(a)
                        stk.append(b)
                    }
                break
                case "+":
                    guard stk.count >= 2 else { break }
                    if let b = stk.popLast(), let a = stk.popLast() {
                        stk.append(a)
                        stk.append(b)
                        var c = a + b
                        stk.append(c)
                    }
                break
                case "C":
                    guard stk.count >= 1 else { break }
                    let b = stk.popLast()
                break
                default:
                    if let int = Int(char) {
                        stk.append(int)
                    }
                break
            }
        }
        return stk.reduce(0, +)
    }
}
