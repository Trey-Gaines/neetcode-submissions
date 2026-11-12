final class MinStack {
    /*
    Generic two stack (element/min stack) solution

    One stack to hold all the elements
    One stack to hold the minimum value at each level of the stack
    -> Only add elements when less than or equal to current min
    --> This ensures elements are the minimum and duplicates are included
    */
    private var _elementStk: [Int] = []
    private var _minStk: [Int] = []


    func push(_ val: Int) {
        _elementStk.append(val)
        if let last = _minStk.last {
            if val <= last {
                _minStk.append(val)
            }
        }
        else { _minStk.append(val)  }
    }

    func pop() {
        let value = _elementStk.popLast()
        if let last = _minStk.last, value == last {
            let _ = _minStk.popLast()
        }
    }

    func top() -> Int {
        return _elementStk.last!
    }

    func getMin() -> Int {
        return _minStk.last!
    }
}
