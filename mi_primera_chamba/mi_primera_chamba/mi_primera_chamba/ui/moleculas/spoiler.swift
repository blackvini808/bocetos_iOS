import SwiftUI

struct Spoiler: View{
    var texto = ""
    
    @State var mostrar: Bool = false
    var body: some View{
        Text("Spoiler: \(texto)")
            .onTapGesture {
                mostrar = !mostrar
            }
            .foregroundStyle((mostrar) ? Color.black : Color.white)
    }
}

#Preview {
    Spoiler(texto: "HOLA MUNDO")
}
