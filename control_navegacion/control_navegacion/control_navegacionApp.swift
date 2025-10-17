import SwiftUI

@main
struct control_navegacionApp: App {
    @StateObject var controlador_app = ControladorGeneral()
    
    var body: some Scene {
        WindowGroup {
            NavegacionPrincipal()
                .environmentObject(controlador_app)
        }
    }
}
