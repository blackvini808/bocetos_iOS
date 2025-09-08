import SwiftUI

enum EstadosJuego{
    case esta_jugando
    case ha_ganado
}


struct JuegoAdivinaNumero: View{
    @State var entrada_del_usuario: String = ""
    @State var intento_del_usuario = 0
    @State var mostrar_spoiler = false
    @State var leyenda: String = ""
    
    @State var estado_del_juego: EstadosJuego = EstadosJuego.esta_jugando
    
    @State var numero_aleatorio = Int.random(in: 1...100)
    
    func validar_intento(){
        let numero_del_usuario = Int(entrada_del_usuario)
        
        // print("La entrada del usaurio es: \(numero_del_usuario)")
        
        if let numero_del_usuario = numero_del_usuario{
            intento_del_usuario += 1
            
            if(numero_del_usuario == numero_aleatorio){
                leyenda = "Has ganado"
                estado_del_juego = .ha_ganado
            }
            else if (numero_del_usuario > numero_aleatorio){
                leyenda = "Tu intento es mayor"
            }
            else {
                leyenda = "Tu intento es menor"
            }
        }
        else {
            leyenda = "Por favor introduce un numero valido"
        }
    }
    
    func loop_juego(){
        switch(estado_del_juego){
            case .esta_jugando:
                validar_intento()
            
            case .ha_ganado:
                intento_del_usuario = 0
                estado_del_juego = .esta_jugando
                numero_aleatorio = Int.random(in: 1...100)
                leyenda = ""
                entrada_del_usuario = ""
        }
    }
    
    var body: some View{
        VStack{
            Spoiler(texto: "Número \(numero_aleatorio)")
            
            Spacer()
            
            Text("REGLAS").font(.system(size: 18))
            Text("ADIVINA EL NÚMERO QUE ESTOY PENSANDO...").font(.system(size: 14))
            Text("Cantidad de intentos: \(intento_del_usuario)").font(.system(size: 12))
            
            Spacer()
            
            Botonexto(accion: {
                if estado_del_juego != .ha_ganado {
                    loop_juego()
                }
            }, texto: $entrada_del_usuario, place_holder: "INTRODUCE UN NÚMERO", etiqueta: "Intentar")
                        
            if(estado_del_juego == .ha_ganado){
                Spacer()
                
                Button(action: loop_juego){
                    Text("Reiniciar juego")
                }
            }
            
            Text(leyenda)
            
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    JuegoAdivinaNumero()
}

