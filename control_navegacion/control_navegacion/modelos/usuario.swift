import SwiftUI

struct Usuario{
    var id: Int
    var nombre: String
}

class ServicioUsuario{
    var usuarios: [Int: Usuario] = [
        1: Usuario(id: 1, nombre: "Juan Perez"),
        2: Usuario(id: 2, nombre: "Ana Gomez"),
        3: Usuario(id: 3, nombre: "Carlos Lopez")
    ]
    
    func obtenerUsuario (id: Int) -> Usuario? {
        return usuarios[id]
    }
}
