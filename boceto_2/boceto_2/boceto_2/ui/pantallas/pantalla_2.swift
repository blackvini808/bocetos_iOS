import SwiftUI

struct Pantalla2: View {
    @State var clicks = 0
    var body: some View {
        
        VStack {
            Image(systemName: "square.and.arrow.up")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Bienvenido a la pantalla dos donde clicks vale: \(clicks)")
        }.onTapGesture {
            clicks += 1 /// clicks.establecer valot(nuevo_valor)
        }
        .padding()
    }}

#Preview {
    Pantalla2()
}
