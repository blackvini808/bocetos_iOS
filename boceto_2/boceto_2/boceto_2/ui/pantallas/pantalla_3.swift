import SwiftUI

enum SaboresPalomitas: String, CaseIterable, Identifiable{
    case Naturales
    case Mantequilla
    case Acarameladas
    case Doritos
    case Takis
    case Brisket
    
    var id: Self { self }
}

enum SeleccionSeries: String, CaseIterable, Identifiable{
    case TheFlash
    case TED
    case YOU
    case FamiliaPLuche
    case Wednesday
    case BettyLaFea
    
    var id: Self { self }
}

enum SeleccionPelis: String, CaseIterable, Identifiable{
    case AVATAR
    case GigantesDeAcero
    case SPIRIT
    case DEADPOOL
    case BulletTrain
    case KnivesOut
    
    var id: Self { self }
}

struct PantallaOpciones: View {
    @State var quiere_palomitas: Bool = false
    @State var quiere_series: Bool = false
    @State var quiere_peliculas: Bool = false
    
    @State var sabor_de_palomitas: SaboresPalomitas = .Naturales
    @State var series: SeleccionSeries = .TheFlash
    @State var peliculas: SeleccionPelis = .AVATAR
    
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Formulario para calcular la cantidad de palomitas")
                Spacer()
                Spacer()
                HStack{
                    Spacer()
                    Text("¿Quieres palomitas?")
                    CajaCheck(checado: $quiere_palomitas, tamaño: 30)
                    Spacer()
                }
                
                if quiere_palomitas{
                    HStack{
                        Text("¿Cuál sabor?")
                            Picker(selection:$sabor_de_palomitas , label: Text("Sabor de palomitas")) {
                                Text("Naturales").tag(SaboresPalomitas.Naturales)
                                Text("Mantequilla").tag(SaboresPalomitas.Mantequilla)
                                Text("Acarameladas").tag(SaboresPalomitas.Acarameladas)
                                Text("Doritos").tag(SaboresPalomitas.Doritos)
                                Text("Takis").tag(SaboresPalomitas.Takis)
                                Text("Sorpresa").tag(SaboresPalomitas.Brisket)
                        }
                    }
                }
                VStack{
                    Text("¿Qué vamos a ver?")
                    HStack{
                        Spacer()
                        Text("Serie")
                        CajaCheck(checado: $quiere_series, tamaño: 30)
                        Spacer()
                        Text("Película")
                        CajaCheck(checado: $quiere_peliculas, tamaño: 30)
                        Spacer()
                    }
                    if quiere_series{
                        HStack{
                            Text("Escoge de la seleccion")
                                Picker(selection:$series , label: Text("Seleccion series")) {
                                    Text("The Flash").tag(SeleccionSeries.TheFlash)
                                    Text("TED").tag(SeleccionSeries.TED)
                                    Text("YOU").tag(SeleccionSeries.YOU)
                                    Text("La Familia P.Luche").tag(SeleccionSeries.FamiliaPLuche)
                                    Text("WEDNESDAY").tag(SeleccionSeries.Wednesday)
                                    Text("Betty la fea").tag(SeleccionSeries.BettyLaFea)
                            }
                        }
                    }
                    if quiere_peliculas{
                        HStack{
                            Text("Escoge de la seleccion")
                                Picker(selection:$peliculas , label: Text("Seleccion pelis")) {
                                    Text("The Flash").tag(SeleccionPelis.AVATAR)
                                    Text("TED").tag(SeleccionPelis.AVATAR)
                                    Text("YOU").tag(SeleccionPelis.AVATAR)
                                    Text("La Familia P.Luche").tag(SeleccionPelis.AVATAR)
                                    Text("WEDNESDAY").tag(SeleccionPelis.AVATAR)
                                    Text("Betty la fea").tag(SeleccionPelis.AVATAR)
                            }
                        }
                    }
                        
                }
                
                /// Text("Hola mundo el valor del slider es: \(valor_slider)")
                /// Slider(value: $valor_slider, in: 0...100)
                
            }
        }
        
    }
}

#Preview {
    PantallaOpciones()
        .environment(ControladorBasico())
}

