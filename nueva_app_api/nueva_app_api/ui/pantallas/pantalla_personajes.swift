//
//  pantalla_personajes.swift
//  nueva_app_api
//
//  Created by alumno on 24-10-25.
//

import SwiftUI

struct PantallaPersonajes: View{
    @Environment(DemonSlayerApp.self) var controlador
    
    var body: some View{
        Spacer()
        ForEach(controlador.personajes){ personaje in
            Text("Yo soy \(personaje.name)")
        }
        Spacer()
        Text("SIGUIENTE PÁGINA")
            .onTapGesture {
                controlador.siguiente_pagina()
            }
    }
}

#Preview {
    PantallaPersonajes()
        .environment(DemonSlayerApp())
}
