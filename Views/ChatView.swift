import SwiftUI

struct ChatView: View {
    @State private var input: String = ""
    
    var body: some View {
        VStack {
            Text("Aipapa GPT Chat")
                .font(.title)
                .padding()
            TextField("硫붿떆吏 ?낅젰", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}
