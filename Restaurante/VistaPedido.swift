//
//  VistaPedido.swift
//  Restaurante
//
//  Created by Jesus on 2/4/24.
//

import SwiftUI

struct VistaPedido: View {
    
    var categoriaActual : Categorias
    
    var body: some View {
      
        
        List(filtrarComida(by: categoriaActual)){
            comida in DetalleComida(comida: comida)
        }
    }
}

struct VistaPedido_Previews: PreviewProvider {
    static var previews: some View {
        VistaPedido(categoriaActual: .mediterranea)// se le da un valor por defecto
    }
}
