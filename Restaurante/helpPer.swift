//
//  helpPer.swift
//  Restaurante
//
//  Created by Jesus on 2/4/24.
//

import Foundation  // es la libreria principal de swiftIU
// estamos creando un tipo de datos
enum Categorias{
    case mediterranea
    case arabe
    case asiatica
    case hindu
}

// para llamarla seria    var pepe = filtrarComida(categoria: .mediterranea)

func filtrarComida (by categoria : Categorias) -> [Comida]{
    var arrayFiltrado = [Comida]()
    
    for comida in datosComida
    {
        if comida.categoria == categoria{
            arrayFiltrado.append(comida)
        }
    }
    return arrayFiltrado
}
