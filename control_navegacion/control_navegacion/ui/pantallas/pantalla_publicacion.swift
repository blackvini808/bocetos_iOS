import SwiftUI

struct PantallaPublicacion: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var publicacion_actual: Publicacion

    var body: some View {
        Text("ERROR: \(publicacion_actual.title)")
        Text("\(publicacion_actual.body)")
        Text("Por: \(publicacion_actual.userId)")
        
        ScrollView{
            VStack{
                ForEach(controlador.comentarios){ comentario in
                    Text("\(comentario)")
                }
            }
        }
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "NO ENCONTRADO")).environment(ControladorGeneral())
}
