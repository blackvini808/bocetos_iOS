import SwiftUI

enum EstadosJuego{
    case esta_jugando
    case ha_ganado
}


struct JuegoAdivinaNumero: View{
    @State var entrada_del_usuario: String = ""
    @State var intento_del_usuario = 0
    @State var mostrar_spoiler = false
    @State var comentario: String = ""
    @State var leyenda_advertencia = false
    
    @State var lista_jugadores = jugadores_falsos
    
    @State var estado_del_juego: EstadosJuego = EstadosJuego.esta_jugando
    
    @State var numero_aleatorio = Int.random(in: 1...100)
    
    func validar_intento(){
        let numero_del_usuario = Int(entrada_del_usuario)
        
        // print("La entrada del usaurio es: \(numero_del_usuario)")
        
        if let numero_del_usuario = numero_del_usuario{
            intento_del_usuario += 1
            leyenda_advertencia = false
            
            if(numero_del_usuario == numero_aleatorio){
                comentario = "Has ganado"
                estado_del_juego = .ha_ganado
                
            }
            else if (numero_del_usuario > numero_aleatorio){
                entrada_del_usuario = ""
                comentario = "Tu intento es mayor"
            }
            else {
                entrada_del_usuario = ""
                comentario = "Tu intento es menor"
            }
        }
        else {
            comentario = "Por favor introduce un numero valido"
            entrada_del_usuario = ""
            leyenda_advertencia = true
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
                comentario = ""
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
            
            Leyenda(peligro: $leyenda_advertencia, texto: comentario)
            
            Spacer()
            VStack{
                RenglonColumna2(columna_1: "Nombre", columna_2: "Puntuación")
                ForEach(jugadores_falsos){ jugador in
                    RenglonColumna2(columna_1: jugador.nombre, columna_2: "\(jugador.puntuacion)")
                }
            }
            Spacer()
        }
    }
}

#Preview {
    JuegoAdivinaNumero()
}

