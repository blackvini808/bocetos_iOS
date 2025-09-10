import Foundation

struct Jugador: Identifiable{
    let id = UUID()
    
    let nombre: String
    let puntuacion: Int
}

let jugadores_falsos = [
    Jugador(nombre: "Rafa", puntuacion: 82),
    Jugador(nombre: "Luna", puntuacion: 95),
    Jugador(nombre: "Tavo", puntuacion: 74),
    Jugador(nombre: "Mara", puntuacion: 88),
    Jugador(nombre: "Chucho", puntuacion: 67),
    Jugador(nombre: "Nati", puntuacion: 91),
    Jugador(nombre: "Gonzo", puntuacion: 79),
    Jugador(nombre: "Vale", puntuacion: 85),
    Jugador(nombre: "Pepe", puntuacion: 72),
    Jugador(nombre: "Lola", puntuacion: 90)
]




