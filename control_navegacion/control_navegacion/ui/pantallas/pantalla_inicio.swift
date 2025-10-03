import SwiftUI


struct PantallaInicio: View{
    var body: some View{
        VStack{
            Text("Bienvenidos al Himalaya")
            NavigationLink {
                PantallaConfiguracion()
            } label: {
                Text("Ir a pantalla configuracion").foregroundStyle(Color.blue)
            }
            NavigationLink {
                PantallaGaleria()
            } label: {
                Text("Ir a pantalla galeria").foregroundStyle(Color.blue)
            }
        }
        
    }
}

#Preview {
        PantallaInicio()
}

