//
//  pista.swift
//  juego_ra
//
//  Created by alumno on 05-11-25.
//

import CoreLocation

struct Pista: Identifiable{
    let ubicacion: CLLocationCoordinate2D
    let id: String
    let cuerpo: CuerpoPista
}
