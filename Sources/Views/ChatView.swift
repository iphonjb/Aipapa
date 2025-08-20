import SwiftUI

struct ChatView: View {
    @State private var input: String = ""
    @State private var messages: [String] = []

    var body: some View {
        VStack(spacing: 8) {
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(messages, id: \.self) { msg in
                        Text(msg)
                            .padding(10)
                            .background(Color.gray.opacity(0.12))
                            .cornerRadius(8)
                    }
                }.padding()
            }
            HStack {
                TextField("硫붿떆吏 ?낅젰", text: $input)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("?꾩넚") {
                    if !input.isEmpty {
                        messages.append(input)
                        input = ""
                    }
                }
            }.padding()
        }
    }
}
