import SwiftUI

struct PantallaPersonajes: View {
    @Environment(DemonSlayerApp.self) var controlador
    
    var body: some View {
        NavigationStack {
            Spacer()
            ScrollView {
                ForEach(controlador.personajes) { personaje in
                    NavigationLink(destination: DetallePersonaje(personaje: personaje)) {
                        TarjetaPersonaje(personaje: personaje)
                            .padding(.bottom, 10) // Espaciado entre tarjetas
                    }
                    .buttonStyle(PlainButtonStyle()) // Para evitar que el botón tenga un estilo predefinido
                }
            }
            Spacer()
            HStack{
                Spacer()
                Image(systemName: "arrowshape.left.fill").onTapGesture {
                    controlador.anterior_pagina()
                }
                Spacer()
                Image(systemName: "arrowshape.right.fill").onTapGesture {controlador.siguiente_pagina()}
                Spacer()
            }
            
        }
    }
}

#Preview {
    PantallaPersonajes()
        .environment(DemonSlayerApp())
}
