import SwiftUI

struct HUDMira: View {
    @State private var scale: CGFloat = 1.0
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.green, lineWidth: 3.7)
                .frame(width: 120, height: 120)
            Circle()
                .stroke(Color.green.opacity(0.2), lineWidth: 10)
                .frame(width: 60, height: 60)
            // Líneas cruzadas
            Rectangle()
                .frame(width: 1, height: 1000).opacity(0.8)
            Rectangle()
                .frame(width: 1000, height: 1).opacity(0.8)
        }
        .foregroundColor(.green)
        .scaleEffect(scale) // CAMBIO AQUÍ: efecto de pulso
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                scale = 1.1
            }
        }
    }
}

#Preview {
    HUDMira()
}
