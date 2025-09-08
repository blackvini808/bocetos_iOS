import SwiftUI

enum TiposLeyenda {
    
}

struct Leyenda: View{
    @Binding var peligro: Bool
    
    var texto: String
    var body: some View{
        Text("HOLA MUNDo").foregroundStyle((peligro) ? Color,red: Color.black)
    }
}

#Preview{
    @State var peligro = true
    Leyenda(peligro: $peligro, texto: "HOLA MUNDO")
}

