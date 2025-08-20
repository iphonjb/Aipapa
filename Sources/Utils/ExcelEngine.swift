import Foundation

struct ExcelEngine {
    // ?ㅼ젣 ?묒? ?붿쭊? iOS?먯꽌 ?쒕뱶?뚰떚 ?꾩슂. ?ш린??CSV 湲곕컲 ?대낫?닿린/遺덈윭?ㅺ린 ?쒓났.
    static func exportCSV(rows: [[String]], to url: URL) throws {
        let lines = rows.map { .map { .replacingOccurrences(of: "\"", with: "\"\"") }.map { "\"\()\"" }.joined(separator: ",") }.joined(separator: "\n")
        try lines.data(using: .utf8)?.write(to: url, options: .atomic)
    }
    static func importCSV(from url: URL) throws -> [[String]] {
        let text = try String(contentsOf: url, encoding: .utf8)
        return text.split(separator: "\n").map { line in
            // ?⑥닚 CSV ?뚯꽌 (?곗샂??肄ㅻ쭏 泥섎━ 理쒖냼)
            var result:[String] = []
            var cur = ""
            var quoted = false
            for ch in line {
                if ch == "\"" {
                    quoted.toggle()
                } else if ch == "," && !quoted {
                    result.append(String(cur))
                    cur = ""
                } else {
                    cur.append(ch)
                }
            }
            result.append(cur)
            return result
        }
    }
}
