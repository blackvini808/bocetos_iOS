//
//  cuadro_datos.swift
//  nueva_app_api
//
//  Created by alumno on 29-10-25.
//

import SwiftUI

struct Cuadro: View {
    var personaje: Personaje
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Label("Edad:", systemImage: "calendar")
                Text("\(personaje.age)")
            }
            HStack {
                Label("Raza:", systemImage: "person.2")
                Text(personaje.race)
            }
            HStack {
                Label("Género:", systemImage: "person.fill")
                Text(personaje.gender)
            }
            HStack {
                Label("Afiliación:", systemImage: "building.2.fill")
                Text("\(personaje.affiliation_id)")
            }
        }
        .font(.title3)
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.black.opacity(0.05))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

#Preview {
    Cuadro(personaje: Personaje(
        id: 1,
        name: "404",
        age: 34,
        gender: "No",
        race: "Aria JAPONESA",
        description: "No encontrado",
        img: "https://i.ytimg.com/vi/CI-wjtEIJsc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLaQ7T7j9Gm6pBMwK3bmAXvxfD9A",
        affiliation_id: 1,
        arc_id: 1,
        quote: "Datos fabricados"
    ))
}
