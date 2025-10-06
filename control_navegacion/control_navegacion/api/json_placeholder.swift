import Foundation

class ServicioWeb{
    func descargar_datos<T: Codable>(url: String) async -> T?{
        do {
            guard let url = URL(string: url) else { throw ErroresDeRed.url_mala }
            let (datos, respuesta) = try await URLSession.shared.data(from: url)
            guard let respuesta = respuesta as? HTTPURLResponse else { throw ErroresDeRed.respuesta_erronea}
            guard respuesta.statusCode >= 200 && respuesta.statusCode < 300 else { throw ErroresDeRed.estado_negativo}
            guard let respuesta_decodificada = try? JSONDecoder().decode(T.self, from: datos) else { throw ErroresDeRed.falla_al_decodificar_informacion}
            
            return respuesta_decodificada
            
        }
        catch ErroresDeRed.url_mala{
            print("PORFAVOR ESCRIBE ALGO QUE SEA UNA URL")
        }
        catch ErroresDeRed.respuesta_erronea{
            print("AL PARECER EL SERVIDOR SE PETATEO")
        }
        catch ErroresDeRed.estado_negativo{
            print("LA URL QUE BUSCAS NO EXISTE O EL SERVIDOR ESTÁ OCUPADO")
        }
        catch ErroresDeRed.falla_al_decodificar_informacion{
            print("TUS ESTRUCTURAS ESTÁN MAL ESCRIBIDAS. PORFAVOR VERIFICA \(type(of: T.self))")
        }
        
        catch{
            print ("Algo salió mal, y no se que es")
        }
        
        return nil
        
    }
}
