import SwiftUI

struct PantallaPersonajes: View {
    @Environment(DemonSlayerApp.self) var controlador
    
    var body: some View {
        NavigationStack {
            Spacer()
            ScrollView {
                ForEach(controlador.personajes) { personaje in
                    NavigationLink(destination: DetallesPersonaje(controlador: DemonSlayerApp(), personaje: personaje)) {
                        TarjetaPersonaje(personaje: personaje)
                            .padding(.bottom, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            Spacer()
            HStack{
                Spacer()
                Image(systemName: "arrowshape.backward.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        controlador.anterior_pagina()
                    }
                Spacer()
                Image(systemName: "arrowshape.forward.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        controlador.siguiente_pagina()
                    }
                Spacer()
            }
            
        }
    }
}

#Preview {
    PantallaPersonajes()
        .environment(DemonSlayerApp())
}
