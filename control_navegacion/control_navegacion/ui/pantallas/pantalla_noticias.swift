import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        if(controlador.publicaciones.isEmpty){
            Text("Datos cargando... Por favor espera.")
        } else{
            NavigationStack{
                ScrollView{
                    LazyVStack{
                        ForEach(controlador.publicaciones) { publicacion in
                            
                            NavigationLink{
                                PantallaPublicacion(publicacion_actual: publicacion)
                            } label: {
                                Encabezado(publicacion: publicacion).onTapGesture {
                                    controlador.publicacion_seleccionada(publicacion.id)
                                }
                            }
                            .buttonStyle(.plain)
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PantallaNoticias()
        .environment(ControladorGeneral())
}

