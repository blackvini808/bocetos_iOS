import SwiftUI


struct PantallaInicio: View{
    var body: some View{
        VStack{
            Spacer()
            Text("Bienvenidos al Himalaya")
            Spacer()
            NavigationLink {
                PantallaConfiguracion()
            } label: {
                Text("Ir a pantalla configuracion")
            }
            NavigationLink {
                PantallaGaleria()
            } label: {
                Text("Ir a pantalla galeria")
            }
            Spacer()
        }
        
    }
}

#Preview {
    NavigationStack{
        PantallaInicio()
    }
}

