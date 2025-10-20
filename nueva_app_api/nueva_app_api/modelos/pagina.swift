//
//  pagina.swift
//  nueva_app_api
//
//  Created by alumno on 20-10-25.
//

import Foundation
import SwiftUI

struct Paginacion: Codable {
    let totalElements: Int,
    let elementsOnPage: Int,
    let currentPage: Int,
    let totalPages: Int,
}

struct Pagina: Codable {
    let pagination: Paginacion
    let personajes: [Personaje]
    
    enum CodingKeys: String, CodingKeys {
        case pagination
        case personajes = "content"
    }
}
