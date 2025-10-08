import SwiftUI

struct PantallaGaleria: View {
    var body: some View {
        Text("Pantalla de galeria")
        NavigationLink{
            PantallaInicio()
        } label: {
            Text("Ir a inicio")
        }
    }
}
