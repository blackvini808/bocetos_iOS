import SwiftUI

struct HUDMarco: View {
    var body: some View {
        GeometryReader { geo in
            let inset: CGFloat = 12
            let gap: CGFloat = 50
            let diag: CGFloat = 50
            let w = geo.size.width - inset * 2
            let h = geo.size.height - inset * 2
            Path { path in
                // Línea superior izquierda → diagonal → horizontal
                path.move(to: CGPoint(x: inset, y: inset + gap))
                path.addLine(to: CGPoint(x: inset, y: inset + diag)) // sube
                path.addLine(to: CGPoint(x: inset + diag, y: inset)) // diagonal
                path.addLine(to: CGPoint(x: inset + w - gap, y: inset)) // horizontal

                // Línea superior derecha (diagonal invertida)
                path.move(to: CGPoint(x: inset + w - diag, y: inset))
                path.addLine(to: CGPoint(x: inset + w, y: inset + diag))
                path.addLine(to: CGPoint(x: inset + w, y: inset + h - gap))

                // Línea inferior derecha
                path.move(to: CGPoint(x: inset + w, y: inset + h - diag))
                path.addLine(to: CGPoint(x: inset + w - diag, y: inset + h))
                path.addLine(to: CGPoint(x: inset + gap, y: inset + h))

                // Línea inferior izquierda
                path.move(to: CGPoint(x: inset + diag, y: inset + h))
                path.addLine(to: CGPoint(x: inset, y: inset + h - diag))
                path.addLine(to: CGPoint(x: inset, y: inset + gap))
                 
            }
            .stroke(Color.green, lineWidth: 3)
        }
    }
}

#Preview{
    HUDMarco()
}
