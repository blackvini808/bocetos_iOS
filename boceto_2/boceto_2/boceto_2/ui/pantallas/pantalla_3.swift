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

enum SeleccionDocus: String, CaseIterable, Identifiable{
    case PlanetaTierra
    case PlanetaTierra_S
    
    var id: Self { self }
}

struct PantallaOpciones: View {
    @State var quiere_palomitas: Bool = false
    @State var quiere_series: Bool = false
    @State var quiere_peliculas: Bool = false
    @State var quiere_docus: Bool = false
    
    @State var sabor_de_palomitas: SaboresPalomitas = .Naturales
    @State var series: SeleccionSeries = .TheFlash
    @State var peliculas: SeleccionPelis = .AVATAR
    @State var docus: SeleccionDocus = .PlanetaTierra
    
    
    var body: some View {
        ZStack{
            Fondo1().edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack{
                    Text("Formulario para calcular la cantidad de palomitas")
                    Spacer()
                    Spacer()
                    Divider().frame(height: 2).background(Color.red)
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
                    Divider().frame(height: 2).background(Color.cyan)
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
                            Text("Documental")
                            CajaCheck(checado: $quiere_docus, tamaño: 30)
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
                                        Text("Avatar").tag(SeleccionPelis.AVATAR)
                                        Text("Gigantes de Acero").tag(SeleccionPelis.GigantesDeAcero)
                                        Text("Spirit").tag(SeleccionPelis.SPIRIT)
                                        Text("Deadpool").tag(SeleccionPelis.DEADPOOL)
                                        Text("Tren Bala").tag(SeleccionPelis.BulletTrain)
                                        Text("Knives Out").tag(SeleccionPelis.KnivesOut)
                                }
                            }
                        }
                        if quiere_docus{
                            HStack{
                                Text("Escoge de la seleccion")
                                    Picker(selection:$docus , label: Text("Seleccion docus")) {
                                        Text("Planeta Tierra").tag(SeleccionDocus.PlanetaTierra)
                                        Text("Planeta Tierra en Silencio").tag(SeleccionDocus.PlanetaTierra_S)
                                    }
                            }
                        }
                            
                    }
                    Divider().frame(height: 2).background(Color.green)
                    /// Text("Hola mundo el valor del slider es: \(valor_slider)")
                    /// Slider(value: $valor_slider, in: 0...100)
                    
                }
            }
        }
    }
}

#Preview {
    PantallaOpciones()
        .environment(ControladorBasico())
}

