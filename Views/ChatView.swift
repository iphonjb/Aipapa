import SwiftUI
struct ChatView: View {
    @State var input: String = ""
    var body: some View {
        VStack {
            TextField("硫붿떆吏 ?낅젰", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}
