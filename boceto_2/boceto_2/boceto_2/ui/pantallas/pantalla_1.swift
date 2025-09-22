import SwiftUI

struct Pantalla1: View {
    @Environment(ControladorBasico.self) var controlador
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! Cantidad de clicks es: \(controlador.clicks)")
        }.onTapGesture {
            controlador.clicks += 1 /// clicks.establecer valot(nuevo_valor)
        }
        .padding()
    }}

#Preview {
    Pantalla1()
        .environment(ControladorBasico())
}
