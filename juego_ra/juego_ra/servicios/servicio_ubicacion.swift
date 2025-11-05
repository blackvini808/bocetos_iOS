//
//  servicio_ubicacion.swift
//  juego_ra
//
//  Created by alumno on 05-11-25.
//

import Foundation
import CoreLocation

@Observable
class ServicioUbicacion: NSObject, CLLocationManagerDelegate{
    var manejador_ubicacion = CLLocationManager()
    
    var estado_de_autorizacion: CLAuthorizationStatus?
    var ubicacion_actual: CLLocationCoordinate2D?
    
    override init(){
        super.init()
        
        manejador_ubicacion.delegate = self
    }
    
    func locationManagerDidAutorization(_ manager: CLLocationManager){
        estado_de_autorizacion = manager.authorizationStatus
        
        switch(estado_de_autorizacion){
            case .notDetermined:
                manager.requestWhenInUseAuthorization()
            case .authorizedWhenInUse:
                manager.requestLocation()
            case .denied:
                print("que malvado el usuario")
            case .restricted:
                print("permisos restringidos para la ubi")
            
            default:
                print("Algo salió muy mal")
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("\(locations.count)")
        print("\(locations.last)")
        ubicacion_actual = locations.last?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("Obtuvimos un error: \(error.localizedDescription)")
    }
    func detener_ubicacion(){
        manejador_ubicacion.stopUpdatingLocation()
    }
}
