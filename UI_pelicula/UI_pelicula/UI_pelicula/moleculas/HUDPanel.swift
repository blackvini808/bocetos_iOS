import SwiftUI

struct HUDPanel: View {
    var title: String
    var value: String
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title.uppercased())
                .font(.system(size: 10, design: .monospaced))
                .foregroundColor(.green.opacity(0.7))
            Text(value)
                .font(.system(size: 14, design: .monospaced))
                .foregroundColor(.green)
        }
        .padding(6)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.green, lineWidth: 1)
        )
    }
}

#Preview {
    HUDPanel(title: "asdasda", value: "asdadssadqwe")
}
