class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
        var (left, right) = (0,0)
        var maxFruit = 0
        var dict = [Int: Int]()
        while right < fruits.count {
            if dict.count <= 2 {
                dict[fruits[right], default: 0] += 1
                right += 1
            }

            if dict.count > 2 {
                if let value = dict[fruits[left]] {
                    if value == 1 {
                        dict.removeValue(forKey: fruits[left])
                    }
                    else {
                        dict[fruits[left]] = value - 1
                    }
                    left+=1
                }
            }
            else {
                maxFruit = max(maxFruit, right - left)
            }
        }
        return maxFruit
    }
}
