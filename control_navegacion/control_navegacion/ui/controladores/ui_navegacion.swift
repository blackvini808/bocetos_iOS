import SwiftUI


enum Pestañas{
    case Configuracion
    case Galeria
    case Noticias
    case Inicio
}

struct NavegacionPrincipal: View {
    @State var pestaña_actual: Pestañas = .Inicio
    
    var body: some View {
        TabView(selection: $pestaña_actual){
            Tab("Inicio", systemImage: "house", value: .Inicio){
                PantallaInicio()
            }
            
            Tab("Noticias", systemImage: "newspaper", value: .Noticias){
                PantallaNoticias()
            }
            .badge(noticias.count)
            
            Tab("Galería", systemImage: "person.crop.square.on.square.angled", value: .Galeria){
                PantallaGaleria()
            }
            
            Tab("Configuración", systemImage: "gearshape", value: .Configuracion){
                PantallaConfiguracion()
            }
        }
    }
}


#Preview {
    NavegacionPrincipal()
}




