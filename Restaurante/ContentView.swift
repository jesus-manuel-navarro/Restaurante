//
//  ContentView.swift
//  Restaurante
//
//  Created by Jesus on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
               /* Text("comida mediterranea")
                Text("comida arabe")
                Text("comida Asiatica")
                Text("comida Hindu") */
                // los e quitado
                // LAS IMAGENES SUS NOMBRES ESTAN EN MINUSCULAS
                NavigationLink(destination: VistaPedido(categoriaActual: .mediterranea)){
                    VistaTipoComida(nombreImagen: "mediterranea", nombreComida: "MEDITERRANEA")}
                NavigationLink(destination: VistaPedido(categoriaActual: .arabe)){                VistaTipoComida(nombreImagen: "arabe", nombreComida: "ARABE")}
                NavigationLink(destination: VistaPedido(categoriaActual: .asiatica)){                VistaTipoComida(nombreImagen: "asiatica", nombreComida: "ASIATICA")}
                NavigationLink(destination: VistaPedido(categoriaActual: .hindu)){                VistaTipoComida(nombreImagen: "indu", nombreComida: "HINDU")}
                
            }
        .navigationTitle("haga su pedido")
        }
    }
}

struct VistaTipoComida : View{ // como si hiceramos un frame
    // estamos configurando con esto la vista de la lista
    var nombreImagen : String
    var nombreComida : String
    
    var body : some View {
        
        HStack{
            Spacer()
        ZStack{  // para que se solape la imagen con el texto
            Image(nombreImagen)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 100)
                .clipped()
                .cornerRadius(20.0)
            
            Text(nombreComida)
                .font(.custom("Helvetica-Medium", size: 34))
                .bold()
                .foregroundColor(.white)
        }
            Spacer()
            
        }
        .padding(.top,5)
        .padding(.bottom,5)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
