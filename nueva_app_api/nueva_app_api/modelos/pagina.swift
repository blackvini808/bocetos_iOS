//
//  pagina.swift
//  nueva_app_api
//
//  Created by alumno on 20-10-25.
//

struct DatosPagina: Codable {
    let totalElements: Int
    let elementsOnPage: Int
    let currentPage: Int
    let totalPages: Int
}

struct Pagina: Codable {
    let datos: DatosPagina
    let personajes: [Personaje]
    
    enum CodingKeys: String, CodingKey {
        case datos = "pagination"
        case personajes = "content"
    }
}
