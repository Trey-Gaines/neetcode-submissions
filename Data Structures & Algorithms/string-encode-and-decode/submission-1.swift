class Solution {

    func encode(_ strs: [String]) -> String {
        let item = ObjectItem(strs.count, strs)
        let encoder = JSONEncoder()
        let letInfo = try? encoder.encode(item) 
        if let info = letInfo {
            return String(data: info, encoding: .utf8) ?? ""
        }
        return "error"
    }

    func decode(_ str: String) -> [String] {
        let decoder = JSONDecoder()

        if let data = str.data(using: .utf8) {
            if let decoded = try? decoder.decode(ObjectItem.self, from: data) {
                return decoded.words
            }
        }
        return ["error"]
    }


    struct ObjectItem: Codable {
        let count: Int
        let words: [String]
        init(_ countIn: Int, _ wordsIn: [String]) {
            self.count = countIn
            self.words = wordsIn
        }
    }
}


