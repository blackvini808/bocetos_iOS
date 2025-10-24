//
//  nueva_app_apiApp.swift
//  nueva_app_api
//
//  Created by alumno on 20-10-25.
//

import SwiftUI

@main
struct nueva_app_apiApp: App {
    @State var aplicacion = DemonSlayerApp()
    
    var body: some Scene {
        WindowGroup {
            PantallaPersonajes()
                .environment(aplicacion)
        }
    }
}
