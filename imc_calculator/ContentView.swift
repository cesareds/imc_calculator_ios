//
//  ContentView.swift
//  imc_calculator
//
//  Created by César de Souza on 23/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var nome: String
    @State var altura: String
    @State var peso: String
    var body: some View {
        TabView{
            VStack {
                Image(systemName: "figure.arms.open")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Calculadora de IMC")
                TextField("Nome", text: $nome)
                TextField("Altura", text: $altura)
                TextField("Peso", text: $peso)
                let altura = Float(altura) ?? 0
                let peso = Float(peso) ?? 0
                let imc = peso / pow(altura, 2)
                let resultado = resultado(imc: imc)
                Text("\(nome) tem IMC " + String(imc))
                Text("\(nome) está em " + resultado)
            }
            .padding()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Principal")
                }.tag(0)
            VStack{
                Text("Histórico")
            }
            .padding()
                .tabItem{
                    Image(systemName: "tray.full")
                    Text("Historico")
                }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(nome: "", altura: "", peso: "")
    }
}


