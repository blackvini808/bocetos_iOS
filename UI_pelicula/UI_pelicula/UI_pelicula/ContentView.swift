//
//  ContentView.swift
//  UI_pelicula
//
//  Created by alumno on 17-09-25.
//

import SwiftUI

struct HUDVista: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Fondo
            // CAMBIO: Marco completo alrededor
            HUDMarco()
            GeometryReader { geo in
                let w = geo.size.width
                let h = geo.size.height
                ZStack {
                    // CAMBIO: esquinas tipo HUD
                    HUDEsquina()
                        .position(x: 20, y: 20)
                    HUDEsquina()
                        .rotationEffect(.degrees(90))
                        .position(x: w - 20, y: 20)
                    HUDEsquina()
                        .rotationEffect(.degrees(180))
                        .position(x: w - 20, y: h - 20)
                    HUDEsquina()
                        .rotationEffect(.degrees(270))
                        .position(x: 20, y: h - 20)
                    // CAMBIO: target central animado
                    HUDMira()
                        .position(x: w/2, y: h/2)
                    // CAMBIO: paneles de datos
                    VStack {
                        HStack {
                            HUDPanel(title: "   ", value: "   ")
                            Spacer()
                            HUDPanel(title: "   ", value: "   ")
                        }
                        Spacer()
                        HStack {
                            HUDPanel(title: "   ", value: "   ")
                            Spacer()
                            HUDPanel(title: "   ", value: "   ")
                        }
                    }
                    .padding()
                }
            }
        }
    }
}
struct ContentView: View {
    var body: some View {
        
    }
}
 
#Preview {
    HUDVista()
}
