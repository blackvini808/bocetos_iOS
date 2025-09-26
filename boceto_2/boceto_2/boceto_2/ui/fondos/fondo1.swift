import SwiftUI

struct Fondo1: View{
    var body: some View{
        FondoParticula()
    }
}

#Preview {
    Fondo1()
}

struct Particula: Identifiable {
    let id = UUID()
    
    var posicion: CGPoint
    var color_: Color
    var talla: CGFloat
    var velocidad: CGFloat
    var opacidad: Double
}

struct FondoParticula: View {
    @State private var particulas: [Particula] = []
    let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            ForEach(particulas) { particula in
                Circle()
                    .fill(particula.color_)
                    .frame(width: particula.talla)
                    .position(particula.posicion)
                    .opacity(particula.opacidad)
            }
        }
        .onReceive(timer){ _ in
            crearParticula()
            actualizaParticula()
        }
    }
    
    private func crearParticula() {
        let nuevaParticula = Particula(
            posicion: CGPoint(
                x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                y: UIScreen.main.bounds.height + 50
            ),
            color_: [.cyan, .green, .purple].randomElement()!,
            talla: CGFloat.random(in: 2...8),
            velocidad: CGFloat.random(in: 2...10),
            opacidad: 1.0 // Cambié la opacidad para estar en el rango adecuado
        )
        particulas.append(nuevaParticula)
    }
    
    private func actualizaParticula() {
        particulas = particulas.compactMap({ particula in
            var actualizadaParticula = particula
            actualizadaParticula.posicion.y -= actualizadaParticula.velocidad
            actualizadaParticula.opacidad -= 0.01
            return actualizadaParticula.opacidad > 0 ? actualizadaParticula : nil
        })
    }
}
