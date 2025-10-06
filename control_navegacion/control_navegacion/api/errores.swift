import SwiftUI

enum ErroresDeRed: Error{
    case url_mala /// Direccion mal escrita
    case peticion_invalida /// Error en peticion HTTP
    case respuesta_erronea /// Datos recibidos incorrector
    case estado_negativo /// Diferente al StatusCode: 200 de HTTP
    case falla_al_decodificar_informacion /// ESCRIBIR MAL EL MODELO
}
