import SwiftUI

struct PantallaPublicacion: View {
    @EnvironmentObject var controlador: ControladorGeneral
    
    var publicacion_actual: Publicacion
    var servicioUsuario = ServicioUsuario()  // Instancia del servicio para obtener usuarios
    
    var body: some View {
        VStack {
            // Obtener el usuario con el userId de la publicación
            if let usuario = servicioUsuario.obtenerUsuario(id: publicacion_actual.userId) {
                Text("Publicado por: \(usuario.nombre)")
                    .font(.headline)
                    .padding(.top, 10)
            } else {
                Text("Usuario desconocido")
                    .font(.headline)
                    .padding(.top, 10)
            }
            
            // Mostrar el título y el cuerpo de la publicación
            Text(publicacion_actual.title)
                .font(.title)
                .padding(.top, 10)
            
            Text(publicacion_actual.body)
                .padding(.top, 5)
            
            // Mostrar los comentarios
            ScrollView {
                VStack {
                    // Aquí accedemos a la propiedad "texto" de cada comentario
                    ForEach(controlador.comentarios) { comentario in
                        // Asegúrate de acceder a "comentario.texto" en lugar de "comentario"
                        Text(comentario.texto)  // Aquí accedemos al texto del comentario
                            .padding(.top, 5)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "Título de prueba", body: "Contenido de la publicación")).environment(ControladorGeneral())
}
