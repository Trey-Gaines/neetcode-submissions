class Solution {
    func countSeniors(_ details: [String]) -> Int {
details.reduce(0) { (result, element) in
            let start = element.index(element.startIndex, offsetBy: 11)
            let end = element.index(start, offsetBy: 2)
            let str = element[start..<end]
            if let validInt = Int(str), validInt > 60 { 
                return result + 1 
            } else { return result }
        }
    }
}
