import SwiftUI

struct TarjetaPersonaje: View {
    var personaje: Personaje
    
    var body: some View {
        VStack(spacing: 15) {
            // Imagen del personaje
            AsyncImage(url: URL(string: personaje.img)) { estado in
                switch estado {
                case .empty:
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(1.5)
                case .success(let imagen):
                    imagen
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .cornerRadius(20) // Bordes redondeados
                        .shadow(radius: 10) // Sombra sutil
                        .padding(10)
                case .failure(_):
                    Text("Parece que no tienes internet")
                        .foregroundColor(.red)
                        .font(.subheadline)
                @unknown default:
                    Text("DIABLOOO, QUE HICISTE")
                }
            }
            
            // Nombre del personaje
            Text((personaje.name))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .lineLimit(1)
                .padding(.top, 10)
            
            // Descripción (si es necesario)
            Text(personaje.description)
                .font(.body)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .lineLimit(3)
                .padding(.top, 5)
            
            // Cita del personaje
            Text("\"\(personaje.quote)\"")
                .italic()
                .foregroundColor(.blue)
                .padding(.top, 5)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 15) // Sombra externa para el contenedor
        .padding([.leading, .trailing], 20)
        .padding(.top, 20)
    }
}

#Preview {
    TarjetaPersonaje(personaje: Personaje(
        id: 1,
        name: "404",
        age: 34,
        gender: "No",
        race: "Aria JAPONESA",
        description: "No encontrado",
        img: "https://i.ytimg.com/vi/CI-wjtEIJsc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLaQ7T7j9Gm6pBMwK3bmAXvxfD9A",
        affiliation_id: 1,
        arc_id: 1,
        quote: "Datos fabricados"
    ))
}
