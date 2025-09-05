//
//  juego_adivina_numero.swift
//  mi_primera_chamba
//
//  Created by alumno on 05-09-25.
//

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
    @State var estados_juego: EstadosJuego = EstadosJuego.esta_jugando
    
    var numero_aleatorio = Int.random(in: 1...100)
    
    
    func validar_intento(){
        let numero_del_usuario = Int(entrada_del_usuario)
        
        //print("La entrada del usuario es: \(numero_del_usuario)")
        if let numero_del_usuario = numero_del_usuario{
            intento_del_usuario += 1
            
            if(numero_del_usuario == numero_aleatorio){
                leyenda = "GANASTE"
            }
            else if(numero_del_usuario > numero_aleatorio){
                leyenda = "TE PASASTE"
            }
            else if(numero_del_usuario < numero_aleatorio){
                leyenda = "TE FALTÓ"
            }
        }else{
            leyenda = "ES NIL"
        }
    }
    
    func loop_juego{
        switch(estado_del_juego){
        case.esta
        }
    }
    
    
    var body: some View{
        VStack{
            Text("SPOILER: \(numero_aleatorio)")
                .onTapGesture {
                    mostrar_spoiler = !mostrar_spoiler
                }.foregroundStyle((mostrar_spoiler) ? Color.black : Color.white)
            
            Spacer()

            Text("REGLAS")
            Text("Cantidad de intentos: \(intento_del_usuario)")
            
            Spacer()
            
            TextField("INTRODUCE UN NÚMERO", text: $entrada_del_usuario).frame(width: 150)
            Button(action: {
                validar_intento()
            }){
                Text("Intentar")
                Image(systemName: "paperplane.fill")
            }
            Text(leyenda)
            
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    JuegoAdivinaNumero()
}

