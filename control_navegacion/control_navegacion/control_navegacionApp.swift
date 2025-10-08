import SwiftUI

@main
struct control_navegacionApp: App {
    @State var controlador_app = ControladorGeneral()
    
    var body: some Scene {
        WindowGroup {
            NavegacionPrincipal()
                .environment(controlador_app)
        }
    }
}
