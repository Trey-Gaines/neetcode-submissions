class Solution {
    func calPoints(_ operations: [String]) -> Int {
        let myStk = Stk(operations: operations)
        return myStk.calculateOperations()
    }
}

extension String {
    func performOperation(_ arr: inout [Int]) {
        switch(self) {
            case "D":
                guard arr.count >= 1 else { break }
                if let a = arr.popLast() {
                    let b = a * 2
                    arr.append(a)
                    arr.append(b)
                }
            break
            case "+":
                guard arr.count >= 2 else { break }
                if let b = arr.popLast(), let a = arr.popLast() {
                    arr.append(a)
                    arr.append(b)
                    let c = a + b
                    arr.append(c)
                }
            break
            case "C":
                guard arr.count >= 1 else { break }
                let _ = arr.popLast()
            break
            default:
                if let int = Int(self) {
                    arr.append(int)
                }
            break
        }
    }


    func performOperationWithSum(_ arr: inout [Int], _ sum: inout Int) {
        switch(self) {
            case "D":
                guard arr.count >= 1 else { break }
                if let a = arr.popLast() {
                    let b = a * 2
                    arr.append(a)
                    arr.append(b)
                    sum += b
                }
            break
            case "+":
                guard arr.count >= 2 else { break }
                if let b = arr.popLast(), let a = arr.popLast() {
                    arr.append(a)
                    arr.append(b)
                    let c = a + b
                    arr.append(c)
                    sum += c
                }
            break
            case "C":
                guard arr.count >= 1 else { break }
                if let b = arr.popLast() {
                    sum -= b
                }
            break
            default:
                if let int = Int(self) {
                    arr.append(int)
                    sum += int
                }
            break
        }
    }
}

extension [Int] {
    static func calculateOperations(_ operations: [String]) -> Int {
        var arr = [Int]()
        arr.reserveCapacity(operations.count)
        
        for char in operations {
            char.performOperation(&arr)
        }
        return arr.reduce(0, +)
    }
}


class Stk {
    var _stk: [Int]
    var _sum: Int

    let _operations: [String]

    init(operations: [String]) {
        _operations = operations
        _stk = [Int]()
        _stk.reserveCapacity(_operations.count)
        _sum = 0
    }

    func calculateOperations() -> Int {
        for char in _operations {
            char.performOperationWithSum(&_stk, &_sum)
        }
        return _sum
    }
}


