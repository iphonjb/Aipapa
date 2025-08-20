import SwiftUI

struct ChatView: View {
    @State private var input: String = ""
    @State private var messages: [String] = []
    var body: some View {
        VStack(spacing: 12) {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 8) {
                    ForEach(messages.indices, id:\.self) { i in
                        Text(messages[i]).padding(10).background(Color.gray.opacity(0.1)).cornerRadius(8)
                    }
                }.padding(.horizontal, 12)
            }
            HStack {
                TextField("硫붿떆吏 ?낅젰", text: )
                    .textFieldStyle(.roundedBorder)
                    .submitLabel(.send)
                    .onSubmit { send() }
                Button("Send"){ send() }
            }.padding(.horizontal, 12).padding(.bottom, 12)
        }
    }
    private func send(){
        let trimmed = input.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        messages.append("?뫀 " + trimmed)
        // ?⑤뵒諛붿씠??LLM/SD 紐⑤뜽 ?곌퀎???????ㅼ슫濡쒕뱶 ??ModelManager?먯꽌 泥섎━ (蹂꾨룄 援ы쁽 ?뚯씪)
        messages.append("?쨼 泥섎━ ?湲?(?⑤뵒諛붿씠??紐⑤뜽 ?곸슜 ???묐떟)")
        input = ""
    }
}
