import SwiftUI


struct PantallaInicio: View{
    var body: some View{
        NavigationStack{
            VStack{
                Text("Bienvenidos al Himalaya")
                
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
            }
        }
    }
}

#Preview {
    PantallaInicio() 
}

