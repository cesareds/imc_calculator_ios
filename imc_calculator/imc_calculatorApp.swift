//
//  imc_calculatorApp.swift
//  imc_calculator
//
//  Created by César de Souza on 23/12/22.
//

import SwiftUI

@main
struct imc_calculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(nome: "", altura: "", peso: "")
        }
    }
}
func resultado(imc: Float)->String{
    if imc < 16{
        return "em magreza grave"
    }else if imc < 17{
        return "em magreza moderada"
    }else if imc < 18.5{
        return "em magreza leve"
    }else if imc < 25{
        return "saudável"
    }else if imc < 30{
        return "sobrepeso"
    }else if imc < 35{
        return "com obesidade Grau I"
    }else if imc < 40{
        return "com obesidade Grau II (severa)"
    }else{
        return "com obesidade Grau III (mórbida)"
    }
}
