//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades: Int {
    case Apagado = 0;
    case VelocidadBaja = 20;
    case VelocidadMedia = 50;
    case VelocidadAlta = 120;
    
    init (velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    var velocidad:Velocidades
    init () {
        velocidad = Velocidades(velocidadInicial:Velocidades.Apagado)
    }
    
    func getVelocidadActual() -> ( actual: Int, velocidadEnCadena: String) {
        var cadena : String = ""
        switch (velocidad) {
        case .Apagado:
            cadena = "Apagado"
        case .VelocidadBaja:
            cadena = "VelocidadBaja";
        case .VelocidadMedia:
            cadena = "VelocidadMedia"
        case .VelocidadAlta:
            cadena = "VelocidadAlta"
        }
        
        return (actual: velocidad.rawValue, velocidadEnCadena: cadena)
    }
    
    
    func cambioDeVelocidad() -> ( actual: Int, velocidadEnCadena: String) {
        switch (velocidad) {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
        }
        return getVelocidadActual()
    }
}

var miauto = Auto();
var ret = miauto.getVelocidadActual();

for i in 0..<20 {
    print("Velocidad actual es: \(ret.actual), \(ret.velocidadEnCadena)")
    ret = miauto.cambioDeVelocidad()
}



