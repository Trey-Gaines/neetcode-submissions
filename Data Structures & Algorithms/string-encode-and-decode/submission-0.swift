class Solution {

    func encode(_ strs: [String]) -> String {
        var string: String = ""
        for str in strs {
            string.append("|***|")
            string.append(str)
            string.append("|***|")
        }
        return string
    }

    func decode(_ str: String) -> [String] {
        var arr = [String]()
        var strs = str.split(separator: "|***|")
        guard strs.count > 0 else { return [""] }
        print(str, strs)
        for str in strs {
            arr.append(String(str))
        }
        return arr
    }
}
