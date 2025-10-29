//
//  descripcion_personaje.swift
//  nueva_app_api
//
//  Created by alumno on 29-10-25.
//

import SwiftUI

struct DescripcionPersonaje: View {
    var personaje: Personaje
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Descripción")
                .font(.headline)
                .foregroundColor(.blue)
            
            Text(personaje.description)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 8)
        }
        .padding(.horizontal)
        .padding(.bottom, 30)
    }
}

#Preview {
    DescripcionPersonaje(personaje: Personaje(
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

