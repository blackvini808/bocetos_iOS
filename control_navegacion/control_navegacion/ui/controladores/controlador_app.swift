import SwiftUI
import Foundation


@Observable
@MainActor
class ControladorGeneral{
    let url_base = "https://jsonplaceholder.typicode.com"

    var publicaciones: [Publicacion] = []
    
    func descargar_publicaciones() async {
        guard let publicaciones_descargadas: [Publicacion] = await ServicioWeb().descargar_datos(url: "\(url_base)/posts") else { return }
        publicaciones = publicaciones_descargadas
    }
}
