//
//  cita_personaje.swift
//  nueva_app_api
//
//  Created by alumno on 27-10-25.
//

import SwiftUI

struct Cita: View {
    @Bindable var controlador: DemonSlayerApp
    var personaje: Personaje
    
    var body: some View {
        VStack(spacing: 8) {
            Text("Cita")
                .font(.headline)
                .foregroundColor(.blue)
            
            Text(controlador.chiste?.joke ?? "Sin chiste todavía")
                .font(.body)
                .italic()
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding(.top, 10)
    }
}

#Preview {
    Cita(
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
