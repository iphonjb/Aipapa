import Foundation

final class ModelManager {
    static let shared = ModelManager()
    private init() {}
    let basePath: URL = {
        let d = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let p = d.appendingPathComponent("Aipapa", isDirectory: true)
        try? FileManager.default.createDirectory(at: p, withIntermediateDirectories: true)
        return p
    }()

    // 紐⑤뜽/?뚮윭洹몄씤/諛깆뾽 怨듭슜 ?붾젆?좊━
    var modelsPath: URL { basePath.appendingPathComponent("models", isDirectory: true) }
    var pluginsPath: URL { basePath.appendingPathComponent("plugins", isDirectory: true) }
    var backupPath: URL  { basePath.appendingPathComponent("backup",  isDirectory: true) }

    // ?ㅼ슫濡쒕뱶/?뺤텞?댁젣?????고??꾩뿉???섑뻾 (?ш린?쒕뒗 寃쎈줈留?蹂댁옣)
    func ensureDirs() {
        [modelsPath, pluginsPath, backupPath].forEach {
            try? FileManager.default.createDirectory(at: , withIntermediateDirectories: true)
        }
    }
}
