import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @EnvironmentObject var controlador: ControladorGeneral

    var body: some View {
        if(controlador.publicaciones.isEmpty){
            Text("Estamos descargando los datos, por favor espera.")
        }
        else{
            NavigationStack{
                ScrollView{
                    LazyVStack{
                        ForEach(controlador.publicaciones) { publicacion in
                            
                            NavigationLink{
                                PantallaPublicacion(publicacion_actual: publicacion)
                            } label: {
                                Encabezado(publicacion: publicacion)
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
        .environmentObject(ControladorGeneral())
}

