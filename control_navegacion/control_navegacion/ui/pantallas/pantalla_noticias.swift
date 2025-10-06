import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ForEach(lista_noticias) { noticia in
                        NavigationLink{
                            PantallaNota(noticia:   noticia)
                        } label: {
                            Encabezado(noticia_presentar: noticia)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
    }
}

#Preview {
    PantallaNoticias().environment(ControladorGeneral())
}

