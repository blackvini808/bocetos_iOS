import SwiftUI


struct Encabezado: View {
    var noticia_presentar: Noticia = Noticia(
        titular: "404", cuerpo: "No encontrado", imagen: "una_salchipapa", prioridad: .importante
    )
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: "list.bullet.rectangle")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            VStack{
                HStack{
                    Text(noticia_presentar.titular)
                        .lineLimit(1)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.red)
                    Spacer()
                }
                Spacer()
                HStack{
                    Text(noticia_presentar.cuerpo)
                        .lineLimit(2)
                    Spacer()
                }
            }
        }
        .frame(height: 78)
        .padding(10)
        .background{
            Rectangle()
                .foregroundStyle(Color.yellow)
                .cornerRadius(10)
                //.padding(-8)
        }
        .padding(5)
    }
}

#Preview {
    Encabezado()
}
