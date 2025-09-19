import SwiftUI

struct HUDEsquina: Shape{
    func path(in rect: CGRect) -> Path{
        var trazo = Path()
        trazo.move(to: .zero)
        trazo.addLine(to: CGPoint(x: rect.width, y:0))
        trazo.move(to: .zero)
        trazo.addLine(to: CGPoint(x: 0, y:rect.height))
        return trazo
    }
}

#Preview{
    HUDEsquina()
}
