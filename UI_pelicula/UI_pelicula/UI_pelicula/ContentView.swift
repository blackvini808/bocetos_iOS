//
//  ContentView.swift
//  UI_pelicula
//
//  Created by alumno on 17-09-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.0, green: 0.04, blue: 0.0).ignoresSafeArea() //Fondo de otro color y se lleva las áreas blancas
            
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color(red: 0.0, green: 0.34, blue: 0.14),lineWidth:5)
                .frame(width: 350, height: 750)
                .overlay(
                    HStack{
                        VStack{
                            Circle()
                                .stroke(Color(red: 0.0, green: 0.04, blue: 0.0))
                        }
                    }
                )
            
        }
    }
}
 
#Preview {
    ContentView()
}
