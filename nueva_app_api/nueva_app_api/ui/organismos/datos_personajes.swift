//
//  datos_personajes.swift
//  nueva_app_api
//
//  Created by alumno on 27-10-25.
//

import SwiftUI

struct DetallePersonaje: View {
    var personaje: Personaje
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: personaje.img)) { estado in
                    switch estado {
                    case .empty:
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                            .scaleEffect(1.5)
                    case .success(let imagen):
                        imagen
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .cornerRadius(20)
                            .shadow(radius: 10)
                            .padding()
                    case .failure(_):
                        Text("Error al cargar la imagen.")
                            .foregroundColor(.red)
                    @unknown default:
                        Text("DIABLOOO, QUE HICISTE")
                    }
                }
                
                Text(personaje.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Edad: \(personaje.age)")
                    .font(.title3)
                
                Text("Raza: \(personaje.race)")
                    .font(.title3)
                
                Text("Género: \(personaje.gender)")
                    .font(.title3)
                
                Text("Afiliación: \(personaje.affiliation_id)") // O puedes agregar una lógica para mostrar el nombre de la afiliación
                    .font(.title3)
                
                Text("Cita: \(personaje.quote)")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Text(personaje.description)
                    .font(.body)
                    .padding()
            }
            .navigationTitle("Detalles de \(personaje.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DetallePersonaje(personaje: Personaje(
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
    ))
}
