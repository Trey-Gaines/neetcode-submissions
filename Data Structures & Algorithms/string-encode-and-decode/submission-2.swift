class Solution {

    func encode(_ strs: [String]) -> String {
        let encoder = JSONEncoder()
        let item = Item(strs)
        if let info = try? encoder.encode(item) {
            return String(data: info, encoding: .utf8) ?? ""
        }

        return "error"
    }

    func decode(_ str: String) -> [String] {
        let decoder = JSONDecoder()

        if let data = str.data(using: .utf8) {
            if let decoded = try? decoder.decode(Item.self, from: data) {
                return decoded.words
            }
        }
        
        return ["error"]
    }


    struct Item: Codable {
        let words: [String]
        init(_ wordsIn: [String]) {
            self.words = wordsIn
        }
    }
}


