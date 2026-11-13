final class MinStack {
    private var _stk: [Int] = []
    private var _min: Int = Int.max
/*  # Intuition
        Basically the idea is to use the stack to store the difference between the value and the minimum 
        at the time. This alongside a min value property can be used to minimize space and also keep all 
        the operations constant time. 

    # Approach 
        The only edge cases to think about is when the stack is empty. I liked to make it clear by 
        resetting min to Int.max, besides that:
            1. When a value is added (if first val set min to val) calculate the diff, if the diff is less 
            than 0 it means there's a new minimum. Otherwise just add it to the stack

            2. When a value is popped if the encoded value is less than 0 it means that it was a minimum 
            at some point and that minimum needs to be changed to the previous minimum. Which can becalculated 
            by using the popped value (and again reset min if it's stack is empty)

            3. To get to you have to see if the value on the stack is less than 0, if it is it's just the 
            current min. Otherwise you have to calculate it which is just the reverse of the push calculation.

            4. Min is always just the current min value
        To demo, given a stack [2, 0,-2]
        When 2 is pushed-> Min: 2, Stack [0]
        When 0 is pushed -> Min: 0, Stack [0, -2]
        When -2 is pushed -> Min: -2, Stack [0, -2, -2]
            A new min and the relationship of each value to the minimum has been recorded each time, which will be used when you pop. 
            To pop the -2, you go to the top of the stack and see a negative so you know it was a min and we have to recalculate the min. 
            So a new _min is set to min - topVal = 0 aka the last minimum so:
        When -2 is popped -> Min: 0, Stack [0, -2]

    # Complexity
        - Amortized Time complexity: O(1)

        - Space complexity: O(n)
*/

    func push(_ val: Int) {
        if _min == Int.max { _min = val }

        let dif =  val - _min
        if dif < 0 {
            _stk.append(dif)
            _min = val
        }
        else { _stk.append(dif)  }
    }

    func pop() {
        if let last = _stk.popLast() {
            if last < 0 {
                _min = _min - last
            }

            if _stk.isEmpty {
                _min = Int.max
            }
        }
    }

    func top() -> Int {
        var top = _stk.last!
        if top < 0 {
            return _min
        } else { return top + _min }
    }

    func getMin() -> Int {
        return _min
    }
}