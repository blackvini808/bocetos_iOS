//
//  ContentView.swift
//  mi_primera_chamba
//
//  Created by alumno on 03-09-25.
//

import SwiftUI

struct Pantalla: View {
    @State var numero: Int = 0
    var body: some View{
        Spacer()
        HStack{
            Text("Haz pulsado \(numero) numero de veces").padding().background(Color.red).foregroundColor(Color.white).cornerRadius(26)
            Spacer()
            Text("HOLA MUNDILLO")
                .background(Color.blue).padding().foregroundColor(Color.yellow)
            Spacer()
            Text("HOLA MUNDILLO")
            Spacer()
            Text("HOLA MUNDILLO")
        }
        Spacer()
        VStack{
            Text("HOLA MUNDILLO")
            Text("HOLA MUNDILLO")
            Text("HOLA MUNDILLO")
            Text("HOLA MUNDILLO")
        }
        Spacer()
        ZStack{
            Text("TEXTO").foregroundColor(Color.red)
            Text("EMPALMADO").foregroundColor(Color.green)
            Text("AYUDAAAA").foregroundColor(Color.red)
            Text("NO PUEDO SALIIIIR").foregroundColor(Color.green)
        }.onTapGesture {
            numero += 1
        }
        Spacer()
    }
}

#Preview {
    Pantalla()
}

