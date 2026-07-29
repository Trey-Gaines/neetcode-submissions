func calculateTime(keyboard string, word string) int {
    var dict = [Character: Int]()
    var wordArr = Array(word)
    for (index, element) in keyboard.enumerated() {
        dict[element, default: index] = index
    }
    var count = 0

    for idx in 0..<wordArr.count {
        if idx == 0 {
            if let value = dict[wordArr[idx]] {
                count += value
            }
        }
        else {
            if let i = dict[wordArr[idx-1]], let j = dict[wordArr[idx]] {
                count += abs(i - j)
            }
        }
    }
    return count
}
