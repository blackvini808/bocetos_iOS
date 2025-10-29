//
//  datos_personajes.swift
//  nueva_app_api
//
//  Created by alumno on 27-10-25.
//

import SwiftUI

struct DetallesPersonaje: View {
    @Bindable var controlador: DemonSlayerApp
    var personaje: Personaje
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                
                // Imagen principal del personaje
                AsyncImage(url: URL(string: personaje.img)) { estado in
                    switch estado {
                    case .empty:
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                            .scaleEffect(1.5)
                            .padding(.top, 40)
                    case .success(let imagen):
                        imagen
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 300, maxHeight: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 10)
                            .padding(.top, 20)
                    case .failure(_):
                        VStack(spacing: 8) {
                            Image(systemName: "xmark.octagon.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.red)
                            Text("Error al cargar la imagen.")
                                .foregroundColor(.red)
                        }
                        .padding(.top, 30)
                    @unknown default:
                        Text("Error desconocido")
                    }
                }
                
                // Nombre del personaje
                VStack(spacing: 4) {
                    Text(personaje.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                // Datos básicos organizados
                VStack(alignment: .leading, spacing: 10) {
                    Cuadro(personaje: personaje)
                }
                // Cita
                VStack(spacing: 8) {
                    Cita(controlador: DemonSlayerApp(), personaje: personaje)
                }
                .padding(.top, 10)
                
                // Descripción
                VStack(alignment: .leading, spacing: 8) {
                    DescripcionPersonaje(personaje: personaje)
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
            .navigationTitle("Detalles de \(personaje.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
        .task {
            controlador.descargar_chiste()
        }
    }
}

#Preview {
    DetallesPersonaje(
        controlador: DemonSlayerApp(),
        personaje: Personaje(
            id: 1,
            name: "Tanjiro Kamado",
            age: 15,
            gender: "Masculino",
            race: "Humano",
            description: "Tanjiro es el protagonista principal de Demon Slayer, un joven decidido y amable.",
            img: "https://i.ytimg.com/vi/CI-wjtEIJsc/hq720.jpg",
            affiliation_id: 1,
            arc_id: 1,
            quote: "¡Voy a salvar a mi hermana Nezuko!"
        )
    )
}
